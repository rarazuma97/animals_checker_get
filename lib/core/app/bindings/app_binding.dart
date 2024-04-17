 import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
 import 'package:animals_checker_get/base/network/client_service.dart';
import 'package:animals_checker_get/core/contracts/generic/binding.dart';
 import 'package:shared_preferences/shared_preferences.dart';
 
class AppBinding extends Binding {
  @override
  Future<void> dependencies() async {
    //Get.lazyPut(() => AppViewModel());
    await preferencesInit();
    _clientInit();
  }

  static Future<void> preferencesInit() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    Get.put<SharedPreferences>(preferences);

    const FlutterSecureStorage secureStorage =  FlutterSecureStorage();
    Get.put<FlutterSecureStorage>(secureStorage);

    }

  static void _clientInit() {
    Get.put<ApiClient>(
      ApiClient(),
    );
  }
}
