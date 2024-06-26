import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/base/namespaces/app_styles.dart';
import 'package:animals_checker_get/core/contracts/presentation/view_model.dart';
import 'package:animals_checker_get/features/home/presentation/view/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

class MainScreenViewModel extends ViewModel {
  final FlutterSecureStorage _secureStorage;
  MainScreenViewModel(this._secureStorage);

  RxInt selectedBottomBarIndex = 0.obs;
  RxString userId = ''.obs;



  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>(); //

  List<Widget> pageList = [
    HomeScreen(),
    const Center(
      child: Text(
        'Search',
        style: CustomStyles.boldTextStyle,
      ),
    ),
    const Center(
        child: Text(
      'settings',
      style: CustomStyles.boldTextStyle,
    )),
    const Center(
      child: Text(
        'account',
        style: CustomStyles.boldTextStyle,
      ),
    ),

  ];

  @override
  void onInit() async {
    super.onInit();
  }

  void switchPage(int page) {
    selectedBottomBarIndex.value = page;
    closeDrawer();
    closeNotificationsDrawer();
    update();
  }

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }

  void openNotificationsDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  void closeNotificationsDrawer() {
    scaffoldKey.currentState?.closeEndDrawer();
  }

  void logout()  {
    _secureStorage.delete(key: 'auth_token');
    context.goNamed('auth');
  }
}
