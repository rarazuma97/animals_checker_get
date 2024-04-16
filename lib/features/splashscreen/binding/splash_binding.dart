import 'package:animals_checker_get/core/contracts/generic/binding.dart';
 
class SplashBinding extends Binding {
  @override
  void dependencies() {
 
    // Get.lazyPut<AuthRepository>(
    //   () => AuthRepositoryImpl(
    //     Get.find<AuthDataSources>(),
    //   ),
    // );
    //Get.lazyPut(() => SplashViewModel(Get.find<AuthRepository>(), Get.find<FlutterSecureStorage>()));
  }
}
