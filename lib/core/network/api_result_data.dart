import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result_data.freezed.dart';
part 'api_result_data.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ApiResultData<T> with _$ApiResultData<T> {
  const factory ApiResultData({
    @JsonKey(name: 'bSuccess') required bool success,
    @JsonKey(name: 'szMessage') String? message,
    @JsonKey(name: 'oResult') T? result,
    @JsonKey(name: 'oResultType') String? resultType,
  }) = _ApiResultData<T>;

  factory ApiResultData.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ApiResultDataFromJson(json, fromJsonT);
}
