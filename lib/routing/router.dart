import 'package:go_router/go_router.dart';
import 'package:lorcana_collection/features/authentification/data/auth_repository.dart';
import 'package:lorcana_collection/features/authentification/presentation/login/login_form_type.dart';
import 'package:lorcana_collection/features/authentification/presentation/login/login_page.dart';
import 'package:lorcana_collection/features/cards/presentation/cards_list_screen.dart';
import 'package:lorcana_collection/routing/go_router_refresh_stream.dart';
import 'package:lorcana_collection/util/colored_debug_printer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

enum AppRoute { home, login }

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);

  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const CardsListScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(formType: LoginFormType.signIn),
      ),
    ],
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    redirect: (context, state) {
      final isAuthenticated = authRepository.isAuthenticated;
      Print.green('DLOG', 'redirect $isAuthenticated');
      return isAuthenticated ? null : '/${AppRoute.login.name}';
    },
  );
}
