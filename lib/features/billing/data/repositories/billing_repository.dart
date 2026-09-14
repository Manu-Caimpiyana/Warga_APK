import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/network_providers.dart';
import '../../../../core/network/unwrapper.dart';
import '../dto/my_bill_item_data.dart';

part 'billing_repository.g.dart';

class BillingRepository {
  final Dio _dio;

  BillingRepository(this._dio);

  Future<List<MyBillItemData>> getMyBills() async {
    final response = await _dio.get('/Billing/MyBill');
    return unwrapResult<List<MyBillItemData>>(
      response,
      (json) => (json as List<dynamic>?)
              ?.map((e) => MyBillItemData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
}

@riverpod
BillingRepository billingRepository(BillingRepositoryRef ref) {
  final dio = ref.watch(dioClientProvider);
  return BillingRepository(dio);
}
