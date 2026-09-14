// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DataStatus _$DataStatusFromJson(Map<String, dynamic> json) => _DataStatus(
  gdUserCreatedId: json['gdUserCreatedId'] as String?,
  szUserCreatedNm: json['szUserCreatedNm'] as String?,
  gdUserUpdatedId: json['gdUserUpdatedId'] as String?,
  szUserUpdatedNm: json['szUserUpdatedNm'] as String?,
  dtmCreated: json['dtmCreated'] == null
      ? null
      : DateTime.parse(json['dtmCreated'] as String),
  dtmLastUpdated: json['dtmLastUpdated'] == null
      ? null
      : DateTime.parse(json['dtmLastUpdated'] as String),
  bInActive: json['bInActive'] as bool? ?? false,
);

Map<String, dynamic> _$DataStatusToJson(_DataStatus instance) =>
    <String, dynamic>{
      'gdUserCreatedId': instance.gdUserCreatedId,
      'szUserCreatedNm': instance.szUserCreatedNm,
      'gdUserUpdatedId': instance.gdUserUpdatedId,
      'szUserUpdatedNm': instance.szUserUpdatedNm,
      'dtmCreated': instance.dtmCreated?.toIso8601String(),
      'dtmLastUpdated': instance.dtmLastUpdated?.toIso8601String(),
      'bInActive': instance.bInActive,
    };
