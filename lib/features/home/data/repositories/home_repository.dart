import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/network_providers.dart';
import '../../../../core/network/unwrapper.dart';
import '../dto/activity_data.dart';
import '../dto/dash_board_data.dart';
import '../dto/info_data.dart';

part 'home_repository.g.dart';

class HomeRepository {
  final Dio _dio;

  HomeRepository(this._dio);

  Future<DashBoardData> getDashboard() async {
    final response = await _dio.get('/DashBoard/Get');
    return unwrapResult<DashBoardData>(
      response,
      (json) => DashBoardData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<List<InfoData>> getAvailableInfo() async {
    final response = await _dio.get('/Info/GetAvailableInfo');
    return unwrapResult<List<InfoData>>(
      response,
      (json) => (json as List<dynamic>?)
              ?.map((e) => InfoData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  Future<List<ActivityData>> getNextActivities() async {
    final response = await _dio.get('/Activity/GetNextActivities');
    return unwrapResult<List<ActivityData>>(
      response,
      (json) => (json as List<dynamic>?)
              ?.map((e) => ActivityData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
}

@riverpod
HomeRepository homeRepository(HomeRepositoryRef ref) {
  final dio = ref.watch(dioClientProvider);
  return HomeRepository(dio);
}
