import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warga_app/core/network/data_status.dart';
import 'bill_template_item_data.dart';

part 'bill_template_data.freezed.dart';
part 'bill_template_data.g.dart';

@freezed
abstract class BillTemplateData with _$BillTemplateData {
  const factory BillTemplateData({
    String? gdId,
    required String szName,
    String? szDescription,
    @Default(true) bool bOccurence,
    List<BillTemplateItemData>? items,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _BillTemplateData;

  factory BillTemplateData.fromJson(Map<String, dynamic> json) => _$BillTemplateDataFromJson(json);
}
