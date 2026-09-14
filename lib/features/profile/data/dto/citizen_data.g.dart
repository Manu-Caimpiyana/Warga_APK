// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citizen_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CitizenData _$CitizenDataFromJson(Map<String, dynamic> json) => _CitizenData(
  gdId: json['gdId'] as String?,
  szCardId: json['szCardId'] as String,
  gdCitizenInfoId: json['gdCitizenInfoId'] as String?,
  citizenInfo: json['citizenInfo'] == null
      ? null
      : CitizenInfoData.fromJson(json['citizenInfo'] as Map<String, dynamic>),
  gdBillTemplateId: json['gdBillTemplateId'] as String?,
  dataStatus: json['dataStatus'] == null
      ? null
      : DataStatus.fromJson(json['dataStatus'] as Map<String, dynamic>),
  intIndex: (json['intIndex'] as num?)?.toInt(),
  bUpdated: json['bUpdated'] as bool?,
);

Map<String, dynamic> _$CitizenDataToJson(_CitizenData instance) =>
    <String, dynamic>{
      'gdId': instance.gdId,
      'szCardId': instance.szCardId,
      'gdCitizenInfoId': instance.gdCitizenInfoId,
      'citizenInfo': instance.citizenInfo,
      'gdBillTemplateId': instance.gdBillTemplateId,
      'dataStatus': instance.dataStatus,
      'intIndex': instance.intIndex,
      'bUpdated': instance.bUpdated,
    };
