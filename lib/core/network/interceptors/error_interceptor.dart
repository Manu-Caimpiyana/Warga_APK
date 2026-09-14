import 'package:dio/dio.dart';
import '../exceptions.dart';

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
