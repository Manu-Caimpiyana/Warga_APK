// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillingData _$BillingDataFromJson(Map<String, dynamic> json) => _BillingData(
  gdId: json['gdId'] as String?,
  dtmDoc: json['dtmDoc'] == null
      ? null
      : DateTime.parse(json['dtmDoc'] as String),
  gdCitizenId: json['gdCitizenId'] as String?,
  gdCitizenInfoId: json['gdCitizenInfoId'] as String?,
  szDescription: json['szDescription'] as String,
  decAmount: (json['decAmount'] as num).toDouble(),
  decRemain: (json['decRemain'] as num?)?.toDouble() ?? 0,
  intYear: (json['intYear'] as num?)?.toInt(),
  intMonth: (json['intMonth'] as num?)?.toInt(),
  bClosed: json['bClosed'] as bool? ?? false,
  dtmDue: json['dtmDue'] == null
      ? null
      : DateTime.parse(json['dtmDue'] as String),
  gdBillingTemplateId: json['gdBillingTemplateId'] as String?,
  billTemplate: json['billTemplate'] == null
      ? null
      : BillTemplateData.fromJson(json['billTemplate'] as Map<String, dynamic>),
  citizen: json['citizen'] == null
      ? null
      : CitizenData.fromJson(json['citizen'] as Map<String, dynamic>),
  dataStatus: json['dataStatus'] == null
      ? null
      : DataStatus.fromJson(json['dataStatus'] as Map<String, dynamic>),
  intIndex: (json['intIndex'] as num?)?.toInt(),
  bUpdated: json['bUpdated'] as bool?,
);

Map<String, dynamic> _$BillingDataToJson(_BillingData instance) =>
    <String, dynamic>{
      'gdId': instance.gdId,
      'dtmDoc': instance.dtmDoc?.toIso8601String(),
      'gdCitizenId': instance.gdCitizenId,
      'gdCitizenInfoId': instance.gdCitizenInfoId,
      'szDescription': instance.szDescription,
      'decAmount': instance.decAmount,
      'decRemain': instance.decRemain,
      'intYear': instance.intYear,
      'intMonth': instance.intMonth,
      'bClosed': instance.bClosed,
      'dtmDue': instance.dtmDue?.toIso8601String(),
      'gdBillingTemplateId': instance.gdBillingTemplateId,
      'billTemplate': instance.billTemplate,
      'citizen': instance.citizen,
      'dataStatus': instance.dataStatus,
      'intIndex': instance.intIndex,
      'bUpdated': instance.bUpdated,
    };
