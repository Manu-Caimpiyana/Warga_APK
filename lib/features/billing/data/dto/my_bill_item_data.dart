import 'package:freezed_annotation/freezed_annotation.dart';
import 'billing_data.dart';
import 'billing_payment_data.dart';

part 'my_bill_item_data.freezed.dart';
part 'my_bill_item_data.g.dart';

@freezed
abstract class MyBillItemData with _$MyBillItemData {
  const factory MyBillItemData({
    required BillingData billing,
    @Default([]) List<BillingPaymentData> billingPayments,
    String? gdId,
    int? intIndex,
    bool? bUpdated,
  }) = _MyBillItemData;

  factory MyBillItemData.fromJson(Map<String, dynamic> json) => _$MyBillItemDataFromJson(json);
}
