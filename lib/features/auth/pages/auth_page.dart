 

 import 'package:animals_checker_get/base/router/app_routes.dart';
import 'package:animals_checker_get/core/contracts/presentation/page.dart';
import 'package:animals_checker_get/features/auth/bindings/auth_screen_binding.dart';
import 'package:animals_checker_get/features/auth/presentation/view/screens/auth_screen.dart';

class AuthPage extends Page {
  AuthPage()
      : super(
          name: Routes.auth,
          page: AuthScreen.new,
          binding: AuthScreenBinding()
        );
}
