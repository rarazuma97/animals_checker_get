import 'package:animals_checker_get/base/router/app_routes.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/core/contracts/presentation/view_model.dart';

class AuthScreenViewModel extends ViewModel {
  final FlutterSecureStorage _secureStorage;

  AuthScreenViewModel(this._secureStorage);

  bool hintText = true;

  @override
  void onInit() {
    super.onInit();
    change(null, status: RxStatus.success());
  }

  void togglePasswordVisibility() {
    hintText = !hintText;
    update();
  }

  Future<void> login(SignedIn statusLogin) async  {
    if (statusLogin.user!.emailVerified) {
      _secureStorage.write(
        key: 'auth_token',
        value: await statusLogin.user!.getIdToken(),
      );
      Get.offAllNamed(Routes.mainPage);
    } else {
      Get.snackbar('Warning', 'Check your email, you should verify your registration');
    }
  }

  Future<void> signUp(UserCreated statusSignup) async {
    try {
      await statusSignup.credential.user!.sendEmailVerification();
      Get.snackbar('Warning', 'Email validation sent');
    } catch (e) {
      Get.snackbar('Warning', 'Error: $e');
    }
  }
}
