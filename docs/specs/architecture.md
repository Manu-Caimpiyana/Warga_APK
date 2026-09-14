# Spesifikasi Arsitektur Frontend — Warga RT 04 Mobile

> Referensi API: [api-documentation.md](file:///d:/Projects/Warga%20APK/warga_app/docs/api/api-documentation.md)  
> Dokumen Indeks: [README.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/README.md)

---

## 1. Pola Arsitektur: Feature-First Clean Architecture

Aplikasi mobile Warga RT 04 menggunakan pendekatan **Feature-First Clean Architecture**. Pendekatan ini mengelompokkan kode berdasarkan modul fitur bisnis (business domain), bukan berdasarkan tipe file teknis. Hal ini memaksimalkan modularitas, skalabilitas, dan kemudahan pemeliharaan kode seiring bertambahnya fitur.

### Diagram Layer Arsitektur

```
┌─────────────────────────────────────────────────────────────┐
│                     PRESENTATION LAYER                      │
│   (Screens, UI Widgets, Riverpod Controllers / Notifiers)   │
└──────────────────────────────┬──────────────────────────────┘
                               │ memanggil
                               ▼
┌─────────────────────────────────────────────────────────────┐
│                        DATA LAYER                           │
│     (Repositories, Remote Data Sources, DTOs / Freezed)     │
└──────────────────────────────┬──────────────────────────────┘
                               │ menggunakan
                               ▼
┌─────────────────────────────────────────────────────────────┐
│                     CORE INFRASTRUCTURE                     │
│    (Dio Network Client, Secure Storage, Theme, Router)      │
└─────────────────────────────────────────────────────────────┘
```

---

## 2. Struktur Direktori Proyek (`lib/`)

```
lib/
├── main.dart                          # Entry point aplikasi & ProviderScope
│
├── core/                              # Shared foundation & infrastructure
│   ├── constants/                     # Nilai konstan global
│   │   ├── api_endpoints.dart         # Daftar path endpoint API
│   │   ├── app_colors.dart            # Palet warna aplikasi
│   │   └── app_constants.dart         # Storage keys, timeout durations, dll
│   ├── network/                       # Layer HTTP client
│   │   ├── dio_client.dart            # Konfigurasi instance Dio & base URL
│   │   ├── api_result.dart            # Generic envelope handler (bSuccess, oResult)
│   │   ├── api_exception.dart         # Definisi custom exception
│   │   └── interceptors/              # Auth, Logging, dan Error Interceptor
│   ├── router/                        # Konfigurasi navigasi & guards
│   │   ├── app_router.dart            # Instance GoRouter & route definitions
│   │   ├── route_names.dart           # Konstanta nama & path rute
│   │   └── scaffold_with_navbar.dart  # ShellRoute untuk dynamic BottomNavigationBar
│   ├── storage/                       # Penyimpanan lokal aman
│   │   └── secure_storage_service.dart# Wrapper FlutterSecureStorage (token & user cache)
│   ├── theme/                         # Desain sistem & tema visual
│   │   ├── app_theme.dart             # ThemeData (Light/Dark)
│   │   └── app_typography.dart        # Konfigurasi Google Fonts (Inter)
│   └── utils/                         # Helper functions & extension methods
│       ├── currency_formatter.dart    # Format Rupiah (IDR)
│       ├── date_formatter.dart        # Format tanggal & waktu (Intl id_ID)
│       └── html_text_sanitizer.dart   # Helper parsing tag HTML seperti <br/>
│
└── features/                          # Modul fitur mandiri (Feature-First)
    ├── auth/                          # Fitur Autentikasi & Sesi
    │   ├── data/
    │   │   ├── dto/                   # Model Freezed (LoginRequest, LoginResponse, User)
    │   │   └── auth_repository.dart   # Implementasi panggilan API Auth
    │   └── presentation/
    │       ├── controllers/           # Riverpod AuthController & AuthState
    │       ├── screens/login_screen.dart
    │       └── widgets/
    │
    ├── home/                          # Fitur Dashboard ("Untuk Saya")
    │   ├── data/
    │   │   ├── dto/                   # DashBoardData, InfoItem, Activity
    │   │   └── home_repository.dart   # Fetch dashboard, available info, next activities
    │   └── presentation/
    │       ├── controllers/           # HomeController & Notifiers
    │       ├── screens/home_screen.dart
    │       └── widgets/               # BalanceCard, InfoCarousel, UpcomingEvents
    │
    ├── billing/                       # Fitur Tagihan Warga
    │   ├── data/
    │   │   ├── dto/                   # MyBillItemData, BillingData, BillingPaymentData
    │   │   └── billing_repository.dart
    │   └── presentation/
    │       ├── controllers/           # BillingController (Tab Belum Lunas / Lunas)
    │       ├── screens/billing_screen.dart
    │       └── widgets/               # BillCard, PaymentHistorySheet
    │
    ├── profile/                       # Fitur Profile Warga & Anggota Keluarga
    │   ├── data/
    │   │   ├── dto/                   # CitizenInfoData, CitizenData, Religion, Tittle
    │   │   └── profile_repository.dart
    │   └── presentation/
    │       ├── controllers/           # ProfileController, FamilyListController
    │       ├── screens/
    │       │   ├── profile_screen.dart
    │       │   └── family_members_screen.dart
    │       └── widgets/               # FamilyMemberCard, EditProfileForm
    │
    └── admin/                         # Modul Fitur Pengurus RT (bOfficer / bFinance)
        ├── data/
        │   ├── dto/                   # BillTemplateData, CashInOutData, UserAccountData
        │   └── admin_repository.dart
        └── presentation/
            ├── controllers/           # AdminDashboardController, CashInOutController
            ├── screens/
            │   ├── admin_menu_screen.dart
            │   ├── bill_templates_screen.dart
            │   ├── citizens_management_screen.dart
            │   ├── cash_in_out_screen.dart
            │   └── user_management_screen.dart
            └── widgets/
```

---

## 3. Pemisahan Tanggung Jawab Layer (Separation of Concerns)

### 3.1 Data Layer (`features/<feature>/data/`)
- **DTO (Data Transfer Object)**:
  - Menggunakan package `freezed` dan `json_annotation`.
  - Berisi anotasi `@JsonKey` untuk memetakan nama field Hungarian notation dari backend ke camelCase yang idiomatik di Dart bila diinginkan, atau mempertahankan nama field sesuai response.
  - Setiap DTO wajib menyediakan factory `fromJson` dan `toJson`.
- **Repository**:
  - Bertanggung jawab memanggil endpoint Dio.
  - Memeriksa envelope response `{ bSuccess, szMessage, oResult }`.
  - Jika `bSuccess == false`, melempar `ApiException(szMessage)`.
  - Tidak memegang state UI, bersifat murni async data fetcher.

### 3.2 Presentation Layer (`features/<feature>/presentation/`)
- **Controller / Notifier**:
  - Menggunakan Riverpod (`@riverpod` code generation atau `Notifier` / `AsyncNotifier`).
  - Mengelola state halaman (loading, success, error).
  - Menghindari logika HTTP langsung; memanggil methods dari Repository provider.
  - Menggunakan `AsyncValue.guard()` untuk menangkap error dari Repository.
- **Screens & Widgets**:
  - Stateless atau ConsumerWidget.
  - Bereaksi terhadap perubahan state via `ref.watch()`.
  - Memicu aksi pengguna via `ref.read()`.
  - Tidak memuat logika bisnis rumit; murni rendering visual.

---

## 4. Konvensi Penamaan & Coding Standards

### 4.1 Field Hungarian Notation (Backend API)
Backend WargaRT04 menggunakan konvensi penamaan Hungarian notation yang ketat:
- `sz` = String (`szName`, `szCardId`, `szNik`, `szDescription`)
- `b` = Boolean (`bSuccess`, `bOfficer`, `bFinance`, `bOccurence`)
- `gd` = GUID / UUID (`gdId`, `gdParentId`, `gdCitizenInfoId`, `gdBillTemplateId`)
- `dec` / `dbl` = Nominal Decimal / Double (`decAmount`, `decCashSaldo`, `decRemain`)
- `dtm` = DateTime ISO-8601 (`dtmCreated`, `dtmEventDate`, `dtmDoc`)
- `int` = Integer (`intIndex`, `intYear`, `intMonth`, `intOpenBill`)
- `o` = Object generic (`oResult`, `oResultType`)

### 4.2 Pemetaan di Dart Model
Di level Dart DTO Freezed, pertahankan penamaan atribut backend secara persis atau gunakan `@JsonKey(name: '...')`:
```dart
@freezed
class CitizenInfoData with _$CitizenInfoData {
  const factory CitizenInfoData({
    String? gdId,
    String? gdParentId,
    required String szCardId, // NIK
    required String szName,
    String? szDescription,
    String? gdTittleId,       // Perhatikan ejaan double-T sesuai backend
    DateTime? dtmBirth,
    String? gdReligionId,
    String? szNickName,
    String? szPhoneNo,
    String? szEmail,
  }) = _CitizenInfoData;

  factory CitizenInfoData.fromJson(Map<String, dynamic> json) => 
      _$CitizenInfoDataFromJson(json);
}
```

> **Aturan Khusus Ejaan Typo Backend**:
> Typo backend seperti `gdTittleId` (double-T) dan `gdBillingTemplateId` (ekstra "ing" pada Billing) **harus dipertahankan** pada DTO agar serialisasi JSON tidak gagal.

---

## 5. Standar Riverpod Provider

Semua provider didaftarkan secara deklaratif:
1. **Infrastructure Providers** (`core/`):
   - `dioProvider`: `Provider<Dio>`
   - `secureStorageServiceProvider`: `Provider<SecureStorageService>`
2. **Repository Providers** (`features/*/data/`):
   - `authRepositoryProvider`: `Provider<AuthRepository>`
   - `homeRepositoryProvider`: `Provider<HomeRepository>`
   - `billingRepositoryProvider`: `Provider<BillingRepository>`
3. **Controller Providers** (`features/*/presentation/`):
   - `AsyncNotifierProvider` untuk state yang melibatkan async network request.
   - Menggunakan `ref.keepAlive()` untuk master data lookup yang tidak sering berubah.
