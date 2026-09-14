// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InfoData _$InfoDataFromJson(Map<String, dynamic> json) => _InfoData(
  gdId: json['gdId'] as String?,
  szName: json['szName'] as String,
  szDescription: json['szDescription'] as String?,
  szImageUrl: json['szImageUrl'] as String?,
  dtmCreated: json['dtmCreated'] == null
      ? null
      : DateTime.parse(json['dtmCreated'] as String),
  dataStatus: json['dataStatus'] == null
      ? null
      : DataStatus.fromJson(json['dataStatus'] as Map<String, dynamic>),
  intIndex: (json['intIndex'] as num?)?.toInt(),
  bUpdated: json['bUpdated'] as bool?,
);

Map<String, dynamic> _$InfoDataToJson(_InfoData instance) => <String, dynamic>{
  'gdId': instance.gdId,
  'szName': instance.szName,
  'szDescription': instance.szDescription,
  'szImageUrl': instance.szImageUrl,
  'dtmCreated': instance.dtmCreated?.toIso8601String(),
  'dataStatus': instance.dataStatus,
  'intIndex': instance.intIndex,
  'bUpdated': instance.bUpdated,
};
