import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/network_providers.dart';
import '../../../../core/network/unwrapper.dart';
import '../../../profile/data/dto/citizen_data.dart';
import '../dto/bill_template_data.dart';
import '../dto/cash_in_out_data.dart';

part 'admin_repository.g.dart';

class AdminRepository {
  final Dio _dio;

  AdminRepository(this._dio);

  Future<List<BillTemplateData>> getBillTemplates() async {
    final response = await _dio.get('/BillTemplate/GetList');
    return unwrapResult<List<BillTemplateData>>(
      response,
      (json) => (json as List<dynamic>?)
              ?.map((e) => BillTemplateData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  Future<List<CitizenData>> getCitizens() async {
    final response = await _dio.get('/Citizen/GetList');
    return unwrapResult<List<CitizenData>>(
      response,
      (json) => (json as List<dynamic>?)
              ?.map((e) => CitizenData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  Future<List<CashInOutData>> getCashInOutList() async {
    final response = await _dio.get('/CashInOut/GetList');
    return unwrapResult<List<CashInOutData>>(
      response,
      (json) => (json as List<dynamic>?)
              ?.map((e) => CashInOutData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
}

@riverpod
AdminRepository adminRepository(AdminRepositoryRef ref) {
  final dio = ref.watch(dioClientProvider);
  return AdminRepository(dio);
}
