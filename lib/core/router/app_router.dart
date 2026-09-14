import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/admin/presentation/screens/admin_citizens_screen.dart';
import '../../features/admin/presentation/screens/admin_kas_rt_screen.dart';
import '../../features/admin/presentation/screens/admin_templates_screen.dart';
import '../../features/auth/domain/auth_state.dart';
import '../../features/auth/presentation/providers/auth_controller.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/home/main_navigation_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  final authNotifier = ValueNotifier<AuthState>(ref.read(authControllerProvider));

  ref.listen<AuthState>(authControllerProvider, (_, next) {
    authNotifier.value = next;
  });

  ref.onDispose(authNotifier.dispose);

  return GoRouter(
    initialLocation: '/login',
    refreshListenable: authNotifier,
    redirect: (BuildContext context, GoRouterState state) {
      final authState = ref.read(authControllerProvider);

      // Jika masih dalam proses optimistik restore (state awal), tunda pengalihan rute
      final isInitial = authState.maybeWhen(
        initial: () => true,
        orElse: () => false,
      );
      if (isInitial) {
        return null;
      }

      final isAuthenticated = authState.isAuthenticated;
      final isGoingToLogin = state.matchedLocation == '/login';

      // 1. Jika belum login dan mencoba akses rute terproteksi -> redirect ke /login
      if (!isAuthenticated) {
        return isGoingToLogin ? null : '/login';
      }

      // 2. Jika sudah login dan mencoba buka /login -> redirect ke /home
      if (isGoingToLogin) {
        return '/home';
      }

      // 3. Guard untuk modul Admin (bOfficer == true)
      if (state.matchedLocation.startsWith('/admin')) {
        final isOfficer = authState.currentUser?.bOfficer ?? false;
        if (!isOfficer) {
          return '/home';
        }

        // 4. Guard khusus menu Kas RT (bFinance == true)
        if (state.matchedLocation.startsWith('/admin/kas-rt')) {
          final isFinance = authState.currentUser?.bFinance ?? false;
          if (!isFinance) {
            return '/home';
          }
        }
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) {
          final reason = state.uri.queryParameters['reason'];
          return LoginScreen(sessionExpiredReason: reason);
        },
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const MainNavigationScreen(),
      ),
      GoRoute(
        path: '/admin/citizens',
        name: 'adminCitizens',
        builder: (context, state) => const AdminCitizensScreen(),
      ),
      GoRoute(
        path: '/admin/templates',
        name: 'adminTemplates',
        builder: (context, state) => const AdminTemplatesScreen(),
      ),
      GoRoute(
        path: '/admin/kas-rt',
        name: 'adminKasRt',
        builder: (context, state) => const AdminKasRtScreen(),
      ),
    ],
  );
}
