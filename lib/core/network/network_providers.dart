import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/auth/presentation/providers/auth_controller.dart';
import '../services/secure_storage_service.dart';
import 'dio_client.dart';

part 'network_providers.g.dart';

@riverpod
SecureStorageService secureStorage(SecureStorageRef ref) {
  return const SecureStorageService();
}

@riverpod
Dio dioClient(DioClientRef ref) {
  final storageService = ref.watch(secureStorageProvider);
  
  return createDioClient(
    baseUrl: 'https://dev.buatapaaja.com/wargart04dev',
    storageService: storageService,
    onUnauthorized: () {
      ref.read(authControllerProvider.notifier).signOut(
        reason: 'Sesi Anda telah berakhir, silakan masuk kembali.',
      );
    },
  );
}

