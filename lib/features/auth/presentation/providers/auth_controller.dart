import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/exceptions.dart';
import '../../../../core/network/network_providers.dart';
import '../../data/repositories/auth_repository.dart';
import '../../domain/auth_state.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  AuthState build() {
    _restoreSessionOptimistically();
    return const AuthState.initial();
  }

  Future<void> _restoreSessionOptimistically() async {
    final storage = ref.read(secureStorageProvider);
    final token = await storage.getToken();
    final cachedUser = await storage.getCachedUser();

    if (token != null && cachedUser != null) {
      state = AuthState.authenticated(token: token, user: cachedUser);
      _verifyTokenInBackground();
    } else {
      state = const AuthState.unauthenticated();
    }
  }

  Future<void> _verifyTokenInBackground() async {
    try {
      final authRepo = ref.read(authRepositoryProvider);
      await authRepo.ping();
    } on UnauthorizedException {
      await signOut(reason: 'Sesi Anda telah berakhir.');
    } catch (_) {
      // Abaikan network timeout sementara
    }
  }

  Future<void> login(String nik, String password) async {
    final authRepo = ref.read(authRepositoryProvider);
    final storage = ref.read(secureStorageProvider);

    final response = await authRepo.login(szNik: nik, szPassword: password);
    await storage.saveSession(token: response.token, user: response.user);
    state = AuthState.authenticated(token: response.token, user: response.user);
  }

  Future<void> signOut({String? reason}) async {
    final storage = ref.read(secureStorageProvider);
    await storage.clearSession();
    state = AuthState.unauthenticated(message: reason);
  }
}
