// routes/app_router.dart
import 'package:drink_tracker/pages/settings.dart';
import 'package:go_router/go_router.dart';
import '../pages/home_page.dart';
import 'scaffolded_route.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder:
            (context, state) =>
                const ScaffoldedRoute(title: 'Home', child: HomePage()),
      ),
      GoRoute(
        path: '/settings',
        builder:
            (context, state) =>
                const ScaffoldedRoute(title: 'Settings', child: SettingsPage()),
      ),
    ],
  );
}
