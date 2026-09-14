# Frontend Specifications — Warga RT 04 Mobile

Direktori ini memuat dokumen spesifikasi teknis (*Frontend SPEC*), standar arsitektur, pola state management, aturan routing/keamanan rute, dan alur modul fitur aplikasi mobile Warga RT 04 (Flutter).

Dokumentasi ini disusun secara modular dan selaras dengan [api-documentation.md](file:///d:/Projects/Warga%20APK/warga_app/docs/api/api-documentation.md).

---

## Indeks Dokumen Spesifikasi

| Dokumen | Topik Utama | Keterangan |
|---|---|---|
| 📐 [architecture.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/architecture.md) | **Feature-First Clean Architecture** | Hierarki folder `lib/`, pemisahan layer Data vs Presentation, konvensi penamaan Hungarian vs CamelCase, dan standar DTO Freezed. |
| 🧭 [routing_and_rbac.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/routing_and_rbac.md) | **Routing & Role-Based Access Control** | Tabel rute GoRouter, dynamic BottomNavigationBar (3 tab warga vs 4 tab pengurus), serta algoritma guard untuk `bOfficer` dan `bFinance`. |
| ⚡ [state_and_caching.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/state_and_caching.md) | **State Management & Caching Strategy** | Siklus sesi autentikasi, inisialisasi cold-start optimis, in-memory caching Riverpod (`keepAlive`), dan kebijakan Pull-to-Refresh. |
| 🌐 [network_and_error.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/network_and_error.md) | **Network, Envelope & Error Handling** | Konfigurasi Dio, unwrapper envelope `{ bSuccess, szMessage, oResult }` pada status HTTP 200, penanganan HTTP 401, dan standar UI feedback. |
| 📱 [feature_flows.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/feature_flows.md) | **Spesifikasi Alur Fitur End-to-End** | Alur Warga Inti (Login, Untuk Saya, Tagihan Saya, Profil & Keluarga) dan Alur Admin (Template Tagihan, Warga KK, Kas RT, Manajemen User). |

---

## Panduan Implementasi Cepat

1. **Memulai Fitur Baru**:
   - Selalu buat folder di bawah `lib/features/<nama_fitur>/` dengan subdirektori `data/` dan `presentation/`.
   - Gunakan DTO Freezed untuk serialisasi respons API.
2. **Memanggil Endpoint**:
   - Manfaatkan fungsi generic unwrapper di `lib/core/network/api_result.dart` agar error bisnis bertanda `bSuccess: false` tertangkap otomatis sebagai `ApiException`.
3. **Mengakses Data di UI**:
   - Manfaatkan Riverpod `AsyncNotifier` dan widget `AsyncValue.when()` untuk menangani state loading, error (dengan tombol coba lagi), dan data.
