import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warga_app/core/network/data_status.dart';

part 'activity_data.freezed.dart';
part 'activity_data.g.dart';

@freezed
abstract class ActivityData with _$ActivityData {
  const factory ActivityData({
    String? gdId,
    required String szName,
    String? szDescription,
    DateTime? dtmEventDate,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _ActivityData;

  factory ActivityData.fromJson(Map<String, dynamic> json) => _$ActivityDataFromJson(json);
}
