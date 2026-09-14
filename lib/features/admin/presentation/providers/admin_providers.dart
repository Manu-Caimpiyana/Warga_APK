import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../profile/data/dto/citizen_data.dart';
import '../../data/dto/bill_template_data.dart';
import '../../data/dto/cash_in_out_data.dart';
import '../../data/repositories/admin_repository.dart';

part 'admin_providers.g.dart';

@riverpod
Future<List<BillTemplateData>> adminBillTemplates(AdminBillTemplatesRef ref) async {
  final repo = ref.watch(adminRepositoryProvider);
  return repo.getBillTemplates();
}

@riverpod
Future<List<CitizenData>> adminCitizens(AdminCitizensRef ref) async {
  final repo = ref.watch(adminRepositoryProvider);
  return repo.getCitizens();
}

@riverpod
Future<List<CashInOutData>> adminCashInOut(AdminCashInOutRef ref) async {
  final repo = ref.watch(adminRepositoryProvider);
  return repo.getCashInOutList();
}
