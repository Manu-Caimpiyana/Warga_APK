// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_in_out_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CashInOutData _$CashInOutDataFromJson(Map<String, dynamic> json) =>
    _CashInOutData(
      gdId: json['gdId'] as String?,
      decAmount: (json['decAmount'] as num).toDouble(),
      szType: json['szType'] as String,
      szDescription: json['szDescription'] as String,
      dtmTransactionDate: json['dtmTransactionDate'] == null
          ? null
          : DateTime.parse(json['dtmTransactionDate'] as String),
      dataStatus: json['dataStatus'] == null
          ? null
          : DataStatus.fromJson(json['dataStatus'] as Map<String, dynamic>),
      intIndex: (json['intIndex'] as num?)?.toInt(),
      bUpdated: json['bUpdated'] as bool?,
    );

Map<String, dynamic> _$CashInOutDataToJson(_CashInOutData instance) =>
    <String, dynamic>{
      'gdId': instance.gdId,
      'decAmount': instance.decAmount,
      'szType': instance.szType,
      'szDescription': instance.szDescription,
      'dtmTransactionDate': instance.dtmTransactionDate?.toIso8601String(),
      'dataStatus': instance.dataStatus,
      'intIndex': instance.intIndex,
      'bUpdated': instance.bUpdated,
    };
