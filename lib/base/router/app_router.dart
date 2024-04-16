import 'package:animals_checker_get/base/router/app_routes.dart';
import 'package:animals_checker_get/core/contracts/presentation/page.dart';
import 'package:animals_checker_get/features/main_screen/pages/main_page.dart';
import 'package:animals_checker_get/features/splashscreen/presentation/pages/splash_page.dart';


abstract class AppRouter {
  static const String initial = Routes.mainPage;

  static List<Page<dynamic>> get pages => _getPages();

  static List<Page<dynamic>> _getPages() {
    return <Page<dynamic>>[
      SplashPage(),
      MainPage(),
 
    ];
  }
}
