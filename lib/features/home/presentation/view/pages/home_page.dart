 
 
   
import 'package:animals_checker_get/base/router/app_routes.dart';
import 'package:animals_checker_get/core/contracts/presentation/page.dart';
import 'package:animals_checker_get/features/home/bindings/home_bindings.dart';
import 'package:animals_checker_get/features/home/presentation/view/screens/home_screen.dart';

 
class HomePage extends Page {
  HomePage()
      : super(
          name: Routes.home,
          page: HomeScreen.new,
          binding: HomeBinding(),
        );
}
