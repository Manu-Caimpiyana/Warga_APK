// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_payment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillingPaymentData _$BillingPaymentDataFromJson(Map<String, dynamic> json) =>
    _BillingPaymentData(
      gdId: json['gdId'] as String?,
      gdParentId: json['gdParentId'] as String?,
      dtmDoc: json['dtmDoc'] == null
          ? null
          : DateTime.parse(json['dtmDoc'] as String),
      decPayment: (json['decPayment'] as num).toDouble(),
      gdUserPayedById: json['gdUserPayedById'] as String?,
      szDescription: json['szDescription'] as String?,
      dataStatus: json['dataStatus'] == null
          ? null
          : DataStatus.fromJson(json['dataStatus'] as Map<String, dynamic>),
      intIndex: (json['intIndex'] as num?)?.toInt(),
      bUpdated: json['bUpdated'] as bool?,
    );

Map<String, dynamic> _$BillingPaymentDataToJson(_BillingPaymentData instance) =>
    <String, dynamic>{
      'gdId': instance.gdId,
      'gdParentId': instance.gdParentId,
      'dtmDoc': instance.dtmDoc?.toIso8601String(),
      'decPayment': instance.decPayment,
      'gdUserPayedById': instance.gdUserPayedById,
      'szDescription': instance.szDescription,
      'dataStatus': instance.dataStatus,
      'intIndex': instance.intIndex,
      'bUpdated': instance.bUpdated,
    };
