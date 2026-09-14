import 'package:dio/dio.dart';
import 'dart:ui';
import '../services/secure_storage_service.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/error_interceptor.dart';

Dio createDioClient({
  required String baseUrl,
  required SecureStorageService storageService,
  required VoidCallback onUnauthorized,
}) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
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
