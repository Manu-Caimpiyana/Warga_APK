// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citizen_info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CitizenInfoData _$CitizenInfoDataFromJson(Map<String, dynamic> json) =>
    _CitizenInfoData(
      gdId: json['gdId'] as String?,
      gdParentId: json['gdParentId'] as String?,
      szCardId: json['szCardId'] as String,
      szName: json['szName'] as String,
      szDescription: json['szDescription'] as String?,
      gdTittleId: json['gdTittleId'] as String?,
      dtmBirth: json['dtmBirth'] == null
          ? null
          : DateTime.parse(json['dtmBirth'] as String),
      gdReligionId: json['gdReligionId'] as String?,
      szNickName: json['szNickName'] as String?,
      szPhoneNo: json['szPhoneNo'] as String?,
      szEmail: json['szEmail'] as String?,
      dataStatus: json['dataStatus'] == null
          ? null
          : DataStatus.fromJson(json['dataStatus'] as Map<String, dynamic>),
      intIndex: (json['intIndex'] as num?)?.toInt(),
      bUpdated: json['bUpdated'] as bool?,
    );

Map<String, dynamic> _$CitizenInfoDataToJson(_CitizenInfoData instance) =>
    <String, dynamic>{
      'gdId': instance.gdId,
      'gdParentId': instance.gdParentId,
      'szCardId': instance.szCardId,
      'szName': instance.szName,
      'szDescription': instance.szDescription,
      'gdTittleId': instance.gdTittleId,
      'dtmBirth': instance.dtmBirth?.toIso8601String(),
      'gdReligionId': instance.gdReligionId,
      'szNickName': instance.szNickName,
      'szPhoneNo': instance.szPhoneNo,
      'szEmail': instance.szEmail,
      'dataStatus': instance.dataStatus,
      'intIndex': instance.intIndex,
      'bUpdated': instance.bUpdated,
    };
