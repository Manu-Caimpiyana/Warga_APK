// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_template_item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillTemplateItemData _$BillTemplateItemDataFromJson(
  Map<String, dynamic> json,
) => _BillTemplateItemData(
  gdId: json['gdId'] as String?,
  gdParentId: json['gdParentId'] as String?,
  szName: json['szName'] as String,
  szDescription: json['szDescription'] as String?,
  decAmount: (json['decAmount'] as num).toDouble(),
  dataStatus: json['dataStatus'] == null
      ? null
      : DataStatus.fromJson(json['dataStatus'] as Map<String, dynamic>),
  intIndex: (json['intIndex'] as num?)?.toInt(),
  bUpdated: json['bUpdated'] as bool?,
);

Map<String, dynamic> _$BillTemplateItemDataToJson(
  _BillTemplateItemData instance,
) => <String, dynamic>{
  'gdId': instance.gdId,
  'gdParentId': instance.gdParentId,
  'szName': instance.szName,
  'szDescription': instance.szDescription,
  'decAmount': instance.decAmount,
  'dataStatus': instance.dataStatus,
  'intIndex': instance.intIndex,
  'bUpdated': instance.bUpdated,
};
