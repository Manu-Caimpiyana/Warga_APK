import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/dto/citizen_info_data.dart';
import '../../data/repositories/profile_repository.dart';

part 'profile_provider.g.dart';

@riverpod
Future<CitizenInfoData> citizenProfile(CitizenProfileRef ref) async {
  final repo = ref.watch(profileRepositoryProvider);
  return repo.getProfile();
}
