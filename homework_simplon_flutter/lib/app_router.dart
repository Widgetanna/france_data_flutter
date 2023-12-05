import 'package:go_router/go_router.dart';
import 'package:homework_simplon_flutter/pages/home_page.dart';
import 'package:homework_simplon_flutter/pages/parametres.dart';
import 'package:homework_simplon_flutter/pages/regions_page.dart';

class AppRouter {
  static final GoRouter instance = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/region',
        builder: (context, state) => const Regions(),
      ),
      GoRoute(
        path: '/parametres',
        builder: (context, state) => const Parametres(),
      ),
    ],
  );
}
