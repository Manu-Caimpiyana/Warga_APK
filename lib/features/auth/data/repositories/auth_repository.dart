import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/network_providers.dart';
import '../../../../core/network/unwrapper.dart';
import '../dto/login_response_data.dart';

part 'auth_repository.g.dart';

class AuthRepository {
  final Dio _dio;

  AuthRepository(this._dio);

  Future<LoginResponseData> login({
    required String szNik,
    required String szPassword,
  }) async {
    final response = await _dio.post(
      '/Auth/Login',
      data: {
        'szUserName': szNik,
        'szPassword': szPassword,
      },
    );
    return unwrapResult<LoginResponseData>(
      response,
      (json) => LoginResponseData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<void> ping() async {
    final response = await _dio.get('/Auth/Ping');
    unwrapResult<dynamic>(response, (json) => json);
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final dio = ref.watch(dioClientProvider);
  return AuthRepository(dio);
}
