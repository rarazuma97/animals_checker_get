import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
 import 'package:animals_checker_get/base/router/app_routes.dart';
import 'package:animals_checker_get/core/contracts/presentation/view_model.dart';
 
class SplashViewModel extends ViewModel {
  SplashViewModel(this._storage);

  final FlutterSecureStorage _storage;

  @override
  void onInit() async {
    await checkUserSession();
    super.onInit(); 
  }

  Future<void> checkUserSession() async {

     await Future<void>.delayed(const Duration(seconds: 2));
    
        await Get.offNamed(Routes.mainPage);
        // : await Get.offNamed(Routes.login);
  }
}