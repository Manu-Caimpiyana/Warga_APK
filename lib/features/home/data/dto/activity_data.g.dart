// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityData _$ActivityDataFromJson(Map<String, dynamic> json) =>
    _ActivityData(
      gdId: json['gdId'] as String?,
      szName: json['szName'] as String,
      szDescription: json['szDescription'] as String?,
      dtmEventDate: json['dtmEventDate'] == null
          ? null
          : DateTime.parse(json['dtmEventDate'] as String),
      dataStatus: json['dataStatus'] == null
          ? null
          : DataStatus.fromJson(json['dataStatus'] as Map<String, dynamic>),
      intIndex: (json['intIndex'] as num?)?.toInt(),
      bUpdated: json['bUpdated'] as bool?,
    );

Map<String, dynamic> _$ActivityDataToJson(_ActivityData instance) =>
    <String, dynamic>{
      'gdId': instance.gdId,
      'szName': instance.szName,
      'szDescription': instance.szDescription,
      'dtmEventDate': instance.dtmEventDate?.toIso8601String(),
      'dataStatus': instance.dataStatus,
      'intIndex': instance.intIndex,
      'bUpdated': instance.bUpdated,
    };
