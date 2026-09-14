// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_template_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillTemplateData _$BillTemplateDataFromJson(Map<String, dynamic> json) =>
    _BillTemplateData(
      gdId: json['gdId'] as String?,
      szName: json['szName'] as String,
      szDescription: json['szDescription'] as String?,
      bOccurence: json['bOccurence'] as bool? ?? true,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => BillTemplateItemData.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataStatus: json['dataStatus'] == null
          ? null
          : DataStatus.fromJson(json['dataStatus'] as Map<String, dynamic>),
      intIndex: (json['intIndex'] as num?)?.toInt(),
      bUpdated: json['bUpdated'] as bool?,
    );

Map<String, dynamic> _$BillTemplateDataToJson(_BillTemplateData instance) =>
    <String, dynamic>{
      'gdId': instance.gdId,
      'szName': instance.szName,
      'szDescription': instance.szDescription,
      'bOccurence': instance.bOccurence,
      'items': instance.items,
      'dataStatus': instance.dataStatus,
      'intIndex': instance.intIndex,
      'bUpdated': instance.bUpdated,
    };
