import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/dto/my_bill_item_data.dart';
import '../../data/repositories/billing_repository.dart';

part 'my_bills_provider.g.dart';

@riverpod
Future<List<MyBillItemData>> myBills(MyBillsRef ref) async {
  final repo = ref.watch(billingRepositoryProvider);
  return repo.getMyBills();
}
