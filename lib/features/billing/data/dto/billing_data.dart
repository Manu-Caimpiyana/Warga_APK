import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warga_app/core/network/data_status.dart';
import 'package:warga_app/features/admin/data/dto/bill_template_data.dart';
import 'package:warga_app/features/profile/data/dto/citizen_data.dart';

part 'billing_data.freezed.dart';
part 'billing_data.g.dart';

@freezed
abstract class BillingData with _$BillingData {
  const factory BillingData({
    String? gdId,
    DateTime? dtmDoc,
    String? gdCitizenId,
    String? gdCitizenInfoId,
    required String szDescription,
    required double decAmount,
    @Default(0) double decRemain,
    int? intYear,
    int? intMonth,
    @Default(false) bool bClosed,
    DateTime? dtmDue,
    String? gdBillingTemplateId,
    BillTemplateData? billTemplate,
    CitizenData? citizen,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _BillingData;

  factory BillingData.fromJson(Map<String, dynamic> json) => _$BillingDataFromJson(json);
}
