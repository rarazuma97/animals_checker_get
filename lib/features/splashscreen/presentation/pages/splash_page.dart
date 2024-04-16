import 'package:animals_checker_get/base/router/app_routes.dart';
import 'package:animals_checker_get/core/contracts/presentation/page.dart';
import 'package:animals_checker_get/features/home/bindings/home_bindings.dart';
import 'package:animals_checker_get/features/splashscreen/binding/splash_binding.dart';
import 'package:animals_checker_get/features/splashscreen/presentation/view/screen/splash_screen.dart';

class SplashPage extends Page {
  SplashPage()
      : super(
          name: Routes.splash,
          page: SplashScreen.new,
          bindings: [
            SplashBinding(),
            HomeBinding(),
          ],
        );
}
