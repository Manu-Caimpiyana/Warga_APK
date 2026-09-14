import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warga_app/core/network/data_status.dart';

part 'info_data.freezed.dart';
part 'info_data.g.dart';

@freezed
abstract class InfoData with _$InfoData {
  const factory InfoData({
    String? gdId,
    required String szName,
    String? szDescription,
    String? szImageUrl,
    DateTime? dtmCreated,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _InfoData;

  factory InfoData.fromJson(Map<String, dynamic> json) => _$InfoDataFromJson(json);
}
