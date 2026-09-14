// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_bill_item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyBillItemData _$MyBillItemDataFromJson(Map<String, dynamic> json) =>
    _MyBillItemData(
      billing: BillingData.fromJson(json['billing'] as Map<String, dynamic>),
      billingPayments:
          (json['billingPayments'] as List<dynamic>?)
              ?.map(
                (e) => BillingPaymentData.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      gdId: json['gdId'] as String?,
      intIndex: (json['intIndex'] as num?)?.toInt(),
      bUpdated: json['bUpdated'] as bool?,
    );

Map<String, dynamic> _$MyBillItemDataToJson(_MyBillItemData instance) =>
    <String, dynamic>{
      'billing': instance.billing,
      'billingPayments': instance.billingPayments,
      'gdId': instance.gdId,
      'intIndex': instance.intIndex,
      'bUpdated': instance.bUpdated,
    };
