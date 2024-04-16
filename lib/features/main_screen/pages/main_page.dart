 

 import 'package:animals_checker_get/base/router/app_routes.dart';
import 'package:animals_checker_get/core/contracts/presentation/page.dart';
import 'package:animals_checker_get/features/home/bindings/home_bindings.dart';
import 'package:animals_checker_get/features/main_screen/bindings/main_screen_binding.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/screens/main_screen.dart';

class MainPage extends Page {
  MainPage()
      : super(
          name: Routes.mainPage,
          page: MainScreen.new,
          bindings: [
            MainScreenBinding(),
            HomeBinding(),
           ],
        );
}
