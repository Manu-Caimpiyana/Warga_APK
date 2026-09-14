// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dash_board_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashBoardData _$DashBoardDataFromJson(Map<String, dynamic> json) =>
    _DashBoardData(
      szGreeting: json['szGreeting'] as String,
      decCashSaldo: (json['decCashSaldo'] as num).toDouble(),
      bHasOpenBilled: json['bHasOpenBilled'] as bool? ?? false,
      intOpenBill: (json['intOpenBill'] as num?)?.toInt() ?? 0,
      gdId: json['gdId'] as String?,
      intIndex: (json['intIndex'] as num?)?.toInt(),
      bUpdated: json['bUpdated'] as bool?,
    );

Map<String, dynamic> _$DashBoardDataToJson(_DashBoardData instance) =>
    <String, dynamic>{
      'szGreeting': instance.szGreeting,
      'decCashSaldo': instance.decCashSaldo,
      'bHasOpenBilled': instance.bHasOpenBilled,
      'intOpenBill': instance.intOpenBill,
      'gdId': instance.gdId,
      'intIndex': instance.intIndex,
      'bUpdated': instance.bUpdated,
    };
