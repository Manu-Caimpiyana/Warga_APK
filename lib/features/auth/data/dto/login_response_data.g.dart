// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) =>
    _LoginResponseData(
      user: UserAccountData.fromJson(json['user'] as Map<String, dynamic>),
      szWelcomePage: json['szWelcomePage'] as String?,
      token: json['token'] as String,
    );

Map<String, dynamic> _$LoginResponseDataToJson(_LoginResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'szWelcomePage': instance.szWelcomePage,
      'token': instance.token,
    };
