import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warga_app/core/network/data_status.dart';

part 'user_account_data.freezed.dart';
part 'user_account_data.g.dart';

@freezed
abstract class UserAccountData with _$UserAccountData {
  const factory UserAccountData({
    String? gdId,
    required String szName,
    String? szDescription,
    String? szEmail,
    String? szPassword,
    bool? bMustChangePassword,
    String? szNik,
    @Default(false) bool bOfficer,
    @Default(false) bool bFinance,
    String? szLangId,
    String? szWelcomePage,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _UserAccountData;

  factory UserAccountData.fromJson(Map<String, dynamic> json) => _$UserAccountDataFromJson(json);
}
