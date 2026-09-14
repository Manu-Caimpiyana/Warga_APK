import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warga_app/core/network/data_status.dart';

part 'cash_in_out_data.freezed.dart';
part 'cash_in_out_data.g.dart';

@freezed
abstract class CashInOutData with _$CashInOutData {
  const factory CashInOutData({
    String? gdId,
    required double decAmount,
    required String szType, // "IN" atau "OUT"
    required String szDescription,
    DateTime? dtmTransactionDate,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _CashInOutData;

  factory CashInOutData.fromJson(Map<String, dynamic> json) => _$CashInOutDataFromJson(json);
}
