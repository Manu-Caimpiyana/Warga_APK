// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiResultData<T> _$ApiResultDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _ApiResultData<T>(
  success: json['bSuccess'] as bool,
  message: json['szMessage'] as String?,
  result: _$nullableGenericFromJson(json['oResult'], fromJsonT),
  resultType: json['oResultType'] as String?,
);

Map<String, dynamic> _$ApiResultDataToJson<T>(
  _ApiResultData<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'bSuccess': instance.success,
  'szMessage': instance.message,
  'oResult': _$nullableGenericToJson(instance.result, toJsonT),
  'oResultType': instance.resultType,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
