import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/dto/user_account_data.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = _Initial;

  const factory AuthState.authenticated({
    required String token,
    required UserAccountData user,
  }) = _Authenticated;

  const factory AuthState.unauthenticated({
    String? message,
  }) = _Unauthenticated;

  bool get isAuthenticated => this is _Authenticated;

  UserAccountData? get currentUser => maybeWhen(
        authenticated: (_, user) => user,
        orElse: () => null,
      );

  String? get token => maybeWhen(
        authenticated: (token, _) => token,
        orElse: () => null,
      );
}
