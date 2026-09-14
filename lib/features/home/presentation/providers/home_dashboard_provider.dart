import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/dto/activity_data.dart';
import '../../data/dto/dash_board_data.dart';
import '../../data/dto/info_data.dart';
import '../../data/repositories/home_repository.dart';

part 'home_dashboard_provider.g.dart';

class HomeDashboardData {
  final DashBoardData dashboard;
  final List<InfoData> infos;
  final List<ActivityData> activities;

  const HomeDashboardData({
    required this.dashboard,
    required this.infos,
    required this.activities,
  });
}

@riverpod
Future<HomeDashboardData> homeDashboard(HomeDashboardRef ref) async {
  final homeRepo = ref.watch(homeRepositoryProvider);

  // Jalankan ketiga request secara paralel untuk performa maksimal
  final results = await Future.wait([
    homeRepo.getDashboard(),
    homeRepo.getAvailableInfo(),
    homeRepo.getNextActivities(),
  ]);

  return HomeDashboardData(
    dashboard: results[0] as DashBoardData,
    infos: results[1] as List<InfoData>,
    activities: results[2] as List<ActivityData>,
  );
}
