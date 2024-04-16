import 'package:animals_checker_get/base/router/app_routes.dart';
import 'package:animals_checker_get/features/home/bindings/home_bindings.dart';
import 'package:animals_checker_get/features/main_screen/bindings/main_screen_binding.dart';
import 'package:animals_checker_get/features/splashscreen/binding/splash_binding.dart';

class DependencyManager {
  static void initializeBindings(String route) {
    // In base alla rotta corrente, inizializza i binding necessari
    switch (route) {
      case Routes.splash:
        SplashBinding().dependencies();
        break;
      case Routes.mainPage:
        MainScreenBinding().dependencies();
        HomeBinding().dependencies();
        break;
      // Aggiungi altri casi per altre rotte se necessario
      default:
        break;
    }
  }
}
