# Spesifikasi Network, Envelope Unwrapping & Error Handling

> Referensi Arsitektur: [architecture.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/architecture.md)  
> Referensi API: [api-documentation.md](file:///d:/Projects/Warga%20APK/warga_app/docs/api/api-documentation.md)

---

## 1. Konfigurasi Network Client (Dio)

Panggilan HTTP dilakukan menggunakan package **`dio`** dengan konfigurasi terpusat pada `lib/core/network/dio_client.dart`:

```dart
Dio createDioClient({
  required String baseUrl,
  required SecureStorageService storageService,
  required VoidCallback onUnauthorized,
}) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl, // "https://dev.buatapaaja.com/wargart04dev"
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  dio.interceptors.addAll([
    AuthInterceptor(storageService: storageService, onUnauthorized: onUnauthorized),
    ErrorInterceptor(),
    LogInterceptor(requestBody: true, responseBody: true), // Aktif di mode kembangkan
  ]);

  return dio;
}
```

---

## 2. Dio Interceptors

### 2.1 `AuthInterceptor`
Menyematkan token Bearer pada setiap request keluar dan menangani status HTTP 401 jika token kedaluwarsa:

```dart
class AuthInterceptor extends Interceptor {
  final SecureStorageService storageService;
  final VoidCallback onUnauthorized;

  AuthInterceptor({required this.storageService, required this.onUnauthorized});

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Lewatkan token jika memanggil endpoint Auth/Login publik
    if (!options.path.contains('/Auth/Login')) {
      final token = await storageService.getToken();
      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      onUnauthorized(); // Memicu pembersihan sesi & navigasi ke /login
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const UnauthorizedException('Sesi Anda telah berakhir, silakan masuk kembali.'),
        ),
      );
    }
    handler.next(err);
  }
}
```

### 2.2 `ErrorInterceptor`
Menerjemahkan error level socket/koneksi menjadi exception yang ramah:

```dart
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.connectionError) {
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const NetworkException('Tidak dapat terhubung ke server. Periksa koneksi internet Anda.'),
        ),
      );
    }
    handler.next(err);
  }
}
```

---

## 3. Pola Envelope Unwrapping & Handling HTTP 200

Backend WargaRT04 mengembalikan struktur envelope standar:
```json
{
  "bSuccess": false,
  "szMessage": "Nomor Induk Keluarga (NIK) tidak terdaftar.",
  "oResult": null,
  "oResultType": null
}
```

> ⚠️ **Kritikal**: Error bisnis (seperti NIK tidak terdaftar, password keliru, data tidak valid) tetap dikirimkan oleh server dengan **status HTTP 200**. Maka dari itu, aplikasi **tidak boleh** menganggap status 200 selalu berhasil tanpa mengecek nilai `bSuccess`.

### 3.1 Generic Unwrapper Function
Fungsi unwrapper bertugas memvalidasi properti `bSuccess` dan mengekstrak `oResult`:

```dart
T unwrapResult<T>(
  Response response,
  T Function(dynamic json) fromJson,
) {
  final data = response.data;
  if (data is Map<String, dynamic>) {
    final bool isSuccess = data['bSuccess'] == true;
    final String? message = data['szMessage'];

    if (isSuccess) {
      final oResult = data['oResult'];
      return fromJson(oResult);
    } else {
      // Lempar ApiException dengan pesan Bahasa Indonesia langsung dari server
      throw ApiException(
        message?.isNotEmpty == true ? message! : 'Permintaan tidak dapat diproses.',
      );
    }
  }
  throw const ApiException('Format respons server tidak sesuai.');
}
```

---

## 4. Hirarki Custom Exception

```dart
/// Exception umum untuk error bisnis dari server (bSuccess: false atau response error)
class ApiException implements Exception {
  final String message;
  final int? statusCode;
  const ApiException(this.message, {this.statusCode});

  @override
  String toString() => message;
}

/// Exception ketika token tidak valid atau expired (HTTP 401)
class UnauthorizedException extends ApiException {
  const UnauthorizedException(super.message) : super(statusCode: 401);
}

/// Exception ketika gagal koneksi fisik / timeout
class NetworkException implements Exception {
  final String message;
  const NetworkException(this.message);

  @override
  String toString() => message;
}
```

---

## 5. Standar Umpan Balik UI (UI Feedback Standard)

### 5.1 Penanganan Error pada Layar Utama (Screen Load)
Saat pemanggilan data awal halaman gagal (`AsyncError`):
- Jangan biarkan layar kosong putih (*white screen*).
- Tampilkan komponen **`AppErrorView`**:
  - Icon ilustrasi error (misalnya `Icons.cloud_off_rounded` atau `Icons.error_outline`).
  - Pesan error deskriptif (dari `e.toString()`).
  - Tombol aksi: **"Muat Ulang"** (memanggil `ref.invalidate(provider)`).

### 5.2 Penanganan Error pada Aksi/Form (Action Failure)
Saat aksi pengguna gagal (misalnya Login salah password, Simpan Profil gagal):
- Tampilkan **`SnackBar`** merah di bagian bawah:
```dart
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text(errorMessage),
    backgroundColor: AppColors.error,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
);
```

### 5.3 Sanitasi Tag HTML pada Teks Respons (`szGreeting`)
Field seperti `szGreeting` dari `DashBoard/Get` mengembalikan string:
```
"Selamat Siang<br/>Ibu Nia"
```
Aplikasi menyediakan helper `HtmlTextSanitizer`:
```dart
class HtmlTextSanitizer {
  /// Memisahkan string berdasarkan tag <br/> atau <br>
  static List<String> splitBreakLines(String text) {
    return text.split(RegExp(r'<br\s*/?>', caseSensitive: false));
  }
}
```
Sehingga di widget `_buildHeader` dapat dirender menjadi dua baris `Text` terpisah:
- Baris 1: "Selamat Siang" (`bodyMedium`)
- Baris 2: "Ibu Nia" (`titleLarge`, `bold`)
