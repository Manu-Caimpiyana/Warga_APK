import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_account_data.dart';

part 'login_response_data.freezed.dart';
part 'login_response_data.g.dart';

@freezed
abstract class LoginResponseData with _$LoginResponseData {
  const factory LoginResponseData({
    required UserAccountData user,
    String? szWelcomePage,
    required String token,
  }) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) => _$LoginResponseDataFromJson(json);
}
