// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAccountData _$UserAccountDataFromJson(Map<String, dynamic> json) =>
    _UserAccountData(
      gdId: json['gdId'] as String?,
      szName: json['szName'] as String,
      szDescription: json['szDescription'] as String?,
      szEmail: json['szEmail'] as String?,
      szPassword: json['szPassword'] as String?,
      bMustChangePassword: json['bMustChangePassword'] as bool?,
      szNik: json['szNik'] as String?,
      bOfficer: json['bOfficer'] as bool? ?? false,
      bFinance: json['bFinance'] as bool? ?? false,
      szLangId: json['szLangId'] as String?,
      szWelcomePage: json['szWelcomePage'] as String?,
      dataStatus: json['dataStatus'] == null
          ? null
          : DataStatus.fromJson(json['dataStatus'] as Map<String, dynamic>),
      intIndex: (json['intIndex'] as num?)?.toInt(),
      bUpdated: json['bUpdated'] as bool?,
    );

Map<String, dynamic> _$UserAccountDataToJson(_UserAccountData instance) =>
    <String, dynamic>{
      'gdId': instance.gdId,
      'szName': instance.szName,
      'szDescription': instance.szDescription,
      'szEmail': instance.szEmail,
      'szPassword': instance.szPassword,
      'bMustChangePassword': instance.bMustChangePassword,
      'szNik': instance.szNik,
      'bOfficer': instance.bOfficer,
      'bFinance': instance.bFinance,
      'szLangId': instance.szLangId,
      'szWelcomePage': instance.szWelcomePage,
      'dataStatus': instance.dataStatus,
      'intIndex': instance.intIndex,
      'bUpdated': instance.bUpdated,
    };
