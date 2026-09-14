import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warga_app/core/network/data_status.dart';

part 'citizen_info_data.freezed.dart';
part 'citizen_info_data.g.dart';

@freezed
abstract class CitizenInfoData with _$CitizenInfoData {
  const factory CitizenInfoData({
    String? gdId,
    String? gdParentId,
    required String szCardId,
    required String szName,
    String? szDescription,
    String? gdTittleId,
    DateTime? dtmBirth,
    String? gdReligionId,
    String? szNickName,
    String? szPhoneNo,
    String? szEmail,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _CitizenInfoData;

  factory CitizenInfoData.fromJson(Map<String, dynamic> json) => _$CitizenInfoDataFromJson(json);
}
