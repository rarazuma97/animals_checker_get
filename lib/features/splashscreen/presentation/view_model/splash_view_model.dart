import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/core/contracts/presentation/view_model.dart';
import 'package:go_router/go_router.dart';

class SplashViewModel extends ViewModel {
  SplashViewModel(this._storage);

  final FlutterSecureStorage _storage;


  @override
  void onInit() async {
    super.onInit();
    change(null, status: RxStatus.success());
    await checkUserSession();

  }

  Future<void> checkUserSession() async {
     await Future<void>.delayed(const Duration(seconds: 2));
        String? id = await _storage.read(key: 'auth_token');
        if(id != null) {
           context.goNamed('home');
        } else {
           context.goNamed('auth');
        }
  }
}
