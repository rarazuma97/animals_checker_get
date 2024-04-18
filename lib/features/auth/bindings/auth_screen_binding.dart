import 'package:animals_checker_get/features/auth/presentation/view_model/auth_screen_view_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/core/contracts/generic/binding.dart';

class AuthScreenBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AuthScreenViewModel(
        Get.find<FlutterSecureStorage>(),
      ),
    );
  }
}
