import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warga_app/core/network/data_status.dart';

part 'billing_payment_data.freezed.dart';
part 'billing_payment_data.g.dart';

@freezed
abstract class BillingPaymentData with _$BillingPaymentData {
  const factory BillingPaymentData({
    String? gdId,
    String? gdParentId,
    DateTime? dtmDoc,
    required double decPayment,
    String? gdUserPayedById,
    String? szDescription,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _BillingPaymentData;

  factory BillingPaymentData.fromJson(Map<String, dynamic> json) => _$BillingPaymentDataFromJson(json);
}
