# Spesifikasi Routing & Role-Based Access Control (RBAC)

> Referensi Arsitektur: [architecture.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/architecture.md)  
> Referensi API: [api-documentation.md](file:///d:/Projects/Warga%20APK/warga_app/docs/api/api-documentation.md)

---

## 1. Ikhtisar Navigasi

Navigasi aplikasi menggunakan package **`go_router`** yang terintegrasi dengan state autentikasi Riverpod (`authControllerProvider`). Aplikasi memiliki dua konteks navigasi utama:
1. **Unauthenticated Routes**: Layar publik di luar shell navbar (misalnya `/login`).
2. **Authenticated Routes (ShellRoute)**: Layar utama dengan dynamic bottom navigation bar (`/home`, `/billing`, `/profile`, dan opsi `/admin`).
3. **Detail & Sub-routes**: Layar child yang menutupi navbar (misalnya form edit profil, detail tagihan, form tambah keluarga).

---

## 2. Tabel Rute Lengkap (Route Table)

| Path Rute | Nama Rute (`name`) | Tipe Layar | Syarat Akses (Role) | Keterangan |
|---|---|---|---|---|
| `/login` | `login` | Standalone | Publik (Belum Login) | Form NIK & Password |
| `/home` | `home` | Shell Tab (1) | Authenticated (Warga / Petugas) | Dashboard "Untuk Saya" |
| `/billing` | `billing` | Shell Tab (2) | Authenticated (Warga / Petugas) | Tagihan Saya (Belum Lunas / Lunas) |
| `/billing/:id` | `billingDetail` | Push Screen | Authenticated (Warga / Petugas) | Detail Tagihan & Rincian Pembayaran |
| `/profile` | `profile` | Shell Tab (3/4) | Authenticated (Warga / Petugas) | Profil Warga, Ganti Password, Logout |
| `/profile/edit` | `editProfile` | Push Screen | Authenticated (Warga / Petugas) | Edit Info Personal (`CitizenInfo`) |
| `/profile/family` | `familyMembers` | Push Screen | Authenticated (Warga / Petugas) | List Anggota Keluarga KK |
| `/profile/family/add` | `addFamilyMember` | Push Screen | Authenticated (Warga / Petugas) | Form Tambah Anggota Keluarga |
| `/admin` | `adminMenu` | Shell Tab (Khusus) | `bOfficer == true` | Menu Pusat Pengurus RT |
| `/admin/templates` | `adminTemplates` | Push Screen | `bOfficer == true` | Kelola Template Tagihan (`BillTemplate`) |
| `/admin/citizens` | `adminCitizens` | Push Screen | `bOfficer == true` | Data Warga KK (`Citizen`) |
| `/admin/kas-rt` | `adminKasRt` | Push Screen | `bOfficer == true && bFinance == true` | Buku Kas RT & Laporan Kas Masuk/Keluar |
| `/admin/users` | `adminUsers` | Push Screen | `bOfficer == true` | Manajemen Akun Petugas & User |

---

## 3. Dynamic Bottom Navigation Bar

Navigasi bar bagian bawah dibangun menggunakan `StatefulShellRoute.indexedStack` atau `ShellRoute`. Komposisi item tab ditentukan secara dinamis berdasarkan nilai `bOfficer` pada profil user yang sedang aktif.

### 3.1 Komposisi Tab untuk Warga Biasa (`bOfficer == false`)
Hanya menampilkan **3 Tab**:
1. **Untuk Saya** (`/home`) — Icon: `Icons.person_outline` / `Icons.person`
2. **Tagihan** (`/billing`) — Icon: `Icons.receipt_long_outlined` / `Icons.receipt_long`
3. **Profile** (`/profile`) — Icon: `Icons.settings_outlined` / `Icons.settings`

### 3.2 Komposisi Tab untuk Pengurus RT (`bOfficer == true`)
Menampilkan **4 Tab** dengan tab Admin disisipkan:
1. **Untuk Saya** (`/home`)
2. **Tagihan** (`/billing`)
3. **Admin** (`/admin`) — Icon: `Icons.admin_panel_settings_outlined` / `Icons.admin_panel_settings`
4. **Profile** (`/profile`)

### Logika Penentuan Index Navigasi
```dart
List<BottomNavigationBarItem> getNavItems(bool isOfficer) {
  return [
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      label: 'Untuk Saya',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.receipt_long_outlined),
      activeIcon: Icon(Icons.receipt_long),
      label: 'Tagihan',
    ),
    if (isOfficer)
      const BottomNavigationBarItem(
        icon: Icon(Icons.admin_panel_settings_outlined),
        activeIcon: Icon(Icons.admin_panel_settings),
        label: 'Admin',
      ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings_outlined),
      activeIcon: Icon(Icons.settings),
      label: 'Profile',
    ),
  ];
}
```

---

## 4. Role-Based Access Control (RBAC) & Route Guard

GoRouter dikonfigurasi dengan properti `redirect` yang mendengarkan perubahan state autentikasi (`refreshListenable` dari Riverpod `Listenable`).

```
                              ┌───────────────────┐
                              │ Navigasi Request  │
                              └─────────┬─────────┘
                                        │
                         Sudah Ada Sesi / Token Valid?
                                    /       \
                                  Tidak      Ya
                                  /           \
                 Ke Rute /login?               Ke Rute /login?
                   /       \                      /       \
                  Ya      Tidak                  Ya      Tidak
                 /           \                  /           \
             Izinkan      Redirect         Redirect        Cek Target Rute
                        ke /login          ke /home        Admin / Kas RT?
                                                             /       \
                                                           Ya        Tidak
                                                           /            \
                                                  Memiliki Akses?      Izinkan
                                                  (bOfficer/bFinance)
                                                      /        \
                                                    Ya        Tidak
                                                    /            \
                                                Izinkan       Redirect
                                                              ke /home
```

### Algoritma Guard pada `app_router.dart`
```dart
String? redirectGuard(BuildContext context, GoRouterState state) {
  final authState = ref.read(authControllerProvider);
  final isAuthenticated = authState.isAuthenticated;
  final isGoingToLogin = state.matchedLocation == '/login';
  final currentUser = authState.user;

  // 1. Jika belum login dan mencoba akses rute terproteksi -> redirect ke /login
  if (!isAuthenticated) {
    return isGoingToLogin ? null : '/login';
  }

  // 2. Jika sudah login dan mencoba buka /login -> redirect ke /home
  if (isGoingToLogin) {
    return '/home';
  }

  // 3. Guard untuk modul Admin (bOfficer == true)
  if (state.matchedLocation.startsWith('/admin')) {
    final isOfficer = currentUser?.bOfficer ?? false;
    if (!isOfficer) {
      return '/home'; // Warga biasa ditolak
    }

    // 4. Guard khusus menu Kas RT (bFinance == true)
    if (state.matchedLocation.startsWith('/admin/kas-rt')) {
      final isFinance = currentUser?.bFinance ?? false;
      if (!isFinance) {
        return '/admin'; // Petugas non-keuangan ditolak masuk Kas RT
      }
    }
  }

  return null; // Izinkan navigasi
}
```

---

## 5. Penanganan Deep Links & Sesi Expired (HTTP 401)

1. **401 Unauthorized Interceptor Trigger**:
   - Jika Dio client menerima status HTTP 401, `AuthInterceptor` memanggil `ref.read(authControllerProvider.notifier).signOut()`.
   - Perubahan state ke `Unauthenticated` memicu `refreshListenable` GoRouter secara otomatis dan mengarahkan tampilan langsung ke `/login`.
2. **Flash Message**:
   - Saat di-redirect akibat sesi habis, query parameter `?reason=session_expired` dapat disematkan agar login screen menampilkan SnackBar peringatan: *"Sesi Anda telah berakhir, silakan masuk kembali."*
