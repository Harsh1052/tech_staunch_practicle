import 'package:tech_staunch_practicle/Screens/list_users_screen.dart';
import 'package:tech_staunch_practicle/Screens/main_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_staunch_practicle/Screens/select_language_screen.dart';

class AppRoutes {
  static const HOME = '/';
  static const PAGINATION_SCREEN = '/register';
  static const LANGUAGE_SCREEN = '/language';

  final routes = GoRouter(
    routes: [
      GoRoute(name:'main_screen',path: HOME, builder: (context, state) => const MainScreen()),
      GoRoute(
        name: 'users',
        path: PAGINATION_SCREEN,
        builder: (context, state) => UserList(),
      ),
      GoRoute(
        name: 'language',
        path: LANGUAGE_SCREEN,
        builder: (context, state) => const SelectLanguage(),
      ),
    ],
  );
}
