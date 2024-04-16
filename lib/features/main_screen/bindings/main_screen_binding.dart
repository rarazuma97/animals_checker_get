 import 'package:get/get.dart';
 import 'package:animals_checker_get/core/contracts/generic/binding.dart';
import 'package:animals_checker_get/features/home/bindings/home_bindings.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view_models/main_screen_view_model.dart';
   
class MainScreenBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut(
      () => MainScreenViewModel(),
    );

    HomeBinding().dependencies();

   
  }
}
