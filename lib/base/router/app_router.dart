import 'package:animals_checker_get/features/animal_detail/bindings/animal_detail_bindings.dart';
import 'package:animals_checker_get/features/animal_detail/presentation/view/screens/animal_detail_screen.dart';
import 'package:animals_checker_get/features/auth/bindings/auth_screen_binding.dart';
import 'package:animals_checker_get/features/auth/presentation/view/screens/auth_screen.dart';
import 'package:animals_checker_get/features/main_screen/bindings/main_screen_binding.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/screens/main_screen.dart';
import 'package:animals_checker_get/features/splashscreen/binding/splash_binding.dart';
import 'package:animals_checker_get/features/splashscreen/presentation/view/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'splash',
        path: '/',
        builder: (context, state) {
          SplashBinding().dependencies();
          return SplashScreen();
        }
      ),
      GoRoute(
          name: 'auth',
          path: '/auth',
          builder: (context, state) {
            AuthScreenBinding().dependencies();
            return AuthScreen();
        }
      ),
      GoRoute(
        name: 'home',
        path: '/home',
        builder: (context, state) {
          MainScreenBinding().dependencies();
          return MainScreen();
        },
        routes: [
              GoRoute(
                name: 'detail',
                path: 'detail',
                builder: (context, state) {
                  AnimalDetailBinding().dependencies();
                  return AnimalDetailScreen();
                },
              ),
        ],
      )
    ],
  );
}
