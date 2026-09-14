import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_status.freezed.dart';
part 'data_status.g.dart';

@freezed
abstract class DataStatus with _$DataStatus {
  const factory DataStatus({
    String? gdUserCreatedId,
    String? szUserCreatedNm,
    String? gdUserUpdatedId,
    String? szUserUpdatedNm,
    DateTime? dtmCreated,
    DateTime? dtmLastUpdated,
    @Default(false) bool bInActive,
  }) = _DataStatus;

  factory DataStatus.fromJson(Map<String, dynamic> json) => _$DataStatusFromJson(json);
}
