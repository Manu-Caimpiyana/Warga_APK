import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/network_providers.dart';
import '../../../../core/network/unwrapper.dart';
import '../dto/citizen_info_data.dart';

part 'profile_repository.g.dart';

class ProfileRepository {
  final Dio _dio;

  ProfileRepository(this._dio);

  Future<CitizenInfoData> getProfile() async {
    final response = await _dio.get('/Citizen/GetProfile');
    return unwrapResult<CitizenInfoData>(
      response,
      (json) => CitizenInfoData.fromJson(json as Map<String, dynamic>),
    );
  }
}

@riverpod
ProfileRepository profileRepository(ProfileRepositoryRef ref) {
  final dio = ref.watch(dioClientProvider);
  return ProfileRepository(dio);
}
