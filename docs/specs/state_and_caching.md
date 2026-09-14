# Spesifikasi State Management & Caching

> Referensi Arsitektur: [architecture.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/architecture.md)  
> Referensi Routing: [routing_and_rbac.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/routing_and_rbac.md)

---

## 1. Arsitektur State Management (Riverpod 3.x)

Manajemen state aplikasi Warga RT 04 dibangun di atas **`flutter_riverpod`** dengan pola `Notifier` dan `AsyncNotifier`. Prinsip utamanya adalah **unidirectional data flow**:

```
[UI Actions (User Event)] ──> [Riverpod Controller] ──> [Data Repository (API)]
          ▲                                                     │
          │                                                     ▼
    [Re-render UI] ◄────── [State Update (AsyncValue)] ◄───────┘
```

---

## 2. Siklus Hidup Sesi Auth (Session Lifecycle) & Cold Start

Sesuai keputusan arsitektur, aplikasi menerapkan pola **Optimistic Launch & Background Verification** untuk menjamin pengalaman membuka aplikasi secepat kilat tanpa blocking splash screen yang lama.

```
                          ┌───────────────────────┐
                          │ Aplikasi Dibuka       │
                          │ (App Cold Start)      │
                          └──────────┬────────────┘
                                     │
                    Baca Token & Cached User dari Storage
                                     │
                        Ada Token & Cache Tersimpan?
                                 /       \
                               Tidak      Ya
                               /           \
                 Set State:                 Set State: Authenticated (Optimis)
                 Unauthenticated            Langsung Buka /home
                 Buka /login                         │
                                            Verifikasi Background
                                            (Panggil Auth/Ping / GetProfile)
                                                     │
                                            Apakah Token Masih Valid?
                                                 /        \
                                               Ya          Tidak (HTTP 401)
                                              /              \
                                         Perbarui         Hapus Storage,
                                         Data Cache       Set State: Unauthenticated,
                                                          Redirect ke /login
```

### 2.1 State Model Autentikasi
```dart
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated({
    required String token,
    required UserAccountData user,
  }) = _Authenticated;
  const factory AuthState.unauthenticated({String? message}) = _Unauthenticated;
}
```

### 2.2 Inisialisasi pada `AuthController`
```dart
class AuthController extends Notifier<AuthState> {
  late final SecureStorageService _storage = ref.read(secureStorageServiceProvider);
  late final AuthRepository _authRepo = ref.read(authRepositoryProvider);

  @override
  AuthState build() {
    // Jalankan restorasi sesi saat provider pertama kali di-inisialisasi
    _restoreSessionOptimistically();
    return const AuthState.initial();
  }

  Future<void> _restoreSessionOptimistically() async {
    final token = await _storage.getToken();
    final cachedUser = await _storage.getCachedUser();

    if (token != null && cachedUser != null) {
      // 1. Masuk optimis langsung
      state = AuthState.authenticated(token: token, user: cachedUser);

      // 2. Verifikasi di background secara non-blocking
      _verifyTokenInBackground();
    } else {
      state = const AuthState.unauthenticated();
    }
  }

  Future<void> _verifyTokenInBackground() async {
    try {
      await _authRepo.ping();
      // Opsional: sync profil terbaru jika ada perubahan
    } on UnauthorizedException {
      await signOut(reason: 'Sesi telah berakhir.');
    } catch (_) {
      // Abaikan jika network timeout, biarkan user memakai data cache sementara
    }
  }

  Future<void> login(String nik, String password) async {
    final response = await _authRepo.login(nik, password);
    await _storage.saveSession(token: response.token, user: response.user);
    state = AuthState.authenticated(token: response.token, user: response.user);
  }

  Future<void> signOut({String? reason}) async {
    await _storage.clearSession();
    state = AuthState.unauthenticated(message: reason);
  }
}
```

---

## 3. Strategi In-Memory Caching & Data Freshness

Aplikasi membagi data ke dalam dua kategori caching dengan aturan pembaruan yang berbeda:

### 3.1 Master Data Lookup (Cache Selama Sesi — `keepAlive()`)
Data yang sangat jarang berubah selama sesi aplikasi berjalan:
- **Agama** (`Religion/GetList`)
- **Gelar** (`Tittle/GetList`)
- **Template Tagihan** (`BillTemplate/GetList`)

**Implementasi Provider:**
```dart
final religionsProvider = FutureProvider<List<Religion>>((ref) async {
  // Cegah auto-dispose agar data tetap ada di RAM selama aplikasi aktif
  ref.keepAlive();
  final repo = ref.watch(profileRepositoryProvider);
  return repo.getReligions();
});

final titlesProvider = FutureProvider<List<Tittle>>((ref) async {
  ref.keepAlive();
  final repo = ref.watch(profileRepositoryProvider);
  return repo.getTitles();
});
```

### 3.2 Data Transaksional & Dinamis (Stale-While-Revalidate)
Data yang sering berubah dan harus mencerminkan saldo atau status aktual:
- **Dashboard Warga** (`DashBoard/Get`, `Info/GetAvailableInfo`, `Activity/GetNextActivities`)
- **Tagihan Saya** (`Billing/MyBill`)
- **Kas RT** (`CashInOut/ViewCashInOut`)

**Kebijakan:**
1. Di-load otomatis saat screen dibuka.
2. Mendukung gesture **Pull-to-Refresh** (`RefreshIndicator`) di setiap screen.
3. Di-invalidasi secara programatik saat terjadi mutasi data (misalnya setelah warga membayar tagihan atau admin memproses tagihan).

---

## 4. Pola Invalidation & Pull-to-Refresh

### 4.1 UI Pull-to-Refresh
Setiap layar berdaftar wajib membungkus kontennya dengan `RefreshIndicator`:
```dart
RefreshIndicator(
  onRefresh: () async {
    // Invalidate provider yang bersangkutan
    ref.invalidate(homeDashboardProvider);
    // Tunggu sampai fetch selesai
    await ref.read(homeDashboardProvider.future);
  },
  child: ListView(...),
)
```

### 4.2 Mutasi Berantai (Chained Invalidation)
Saat aksi bisnis selesai (misalnya konfirmasi pembayaran tagihan berhasil):
```dart
Future<void> submitPayment(String billId, double amount) async {
  state = const AsyncValue.loading();
  state = await AsyncValue.guard(() async {
    await ref.read(billingRepositoryProvider).payBill(billId, amount);
    
    // Invalidasi otomatis data terkait yang terdampak
    ref.invalidate(myBillsProvider);
    ref.invalidate(homeDashboardProvider); // Karena open bill count & status berubah
  });
}
```
