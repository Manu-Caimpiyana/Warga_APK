import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warga_app/core/network/data_status.dart';
import 'citizen_info_data.dart';

part 'citizen_data.freezed.dart';
part 'citizen_data.g.dart';

@freezed
abstract class CitizenData with _$CitizenData {
  const factory CitizenData({
    String? gdId,
    required String szCardId,
    String? gdCitizenInfoId,
    CitizenInfoData? citizenInfo,
    String? gdBillTemplateId,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _CitizenData;

  factory CitizenData.fromJson(Map<String, dynamic> json) => _$CitizenDataFromJson(json);
}
