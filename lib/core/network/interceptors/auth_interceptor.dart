import 'package:dio/dio.dart';
import 'dart:ui';
import '../../services/secure_storage_service.dart';
import '../exceptions.dart';

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
