import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warga_app/core/network/data_status.dart';

part 'bill_template_item_data.freezed.dart';
part 'bill_template_item_data.g.dart';

@freezed
abstract class BillTemplateItemData with _$BillTemplateItemData {
  const factory BillTemplateItemData({
    String? gdId,
    String? gdParentId,
    required String szName,
    String? szDescription,
    required double decAmount,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _BillTemplateItemData;

  factory BillTemplateItemData.fromJson(Map<String, dynamic> json) => _$BillTemplateItemDataFromJson(json);
}
