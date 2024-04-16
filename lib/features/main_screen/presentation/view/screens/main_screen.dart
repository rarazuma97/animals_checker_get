import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/core/contracts/presentation/screen.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/bottom_nav_bar.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/custom_app_bar.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/custom_drawer.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/notification_drawer.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view_models/main_screen_view_model.dart';

class MainScreen extends Screen<MainScreenViewModel> {
  MainScreen({super.key});

  @override
  Widget builder() {
    return Obx(() => Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              key: viewModel.scaffoldKey,
              endDrawer: const NotificationDrawer() ,
              drawer: CustomDrawer(
                index: viewModel.selectedBottomBarIndex.value,
                onTapItem: viewModel.switchPage),
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(80),
                child: CustomAppBar(
                  iconMenuPressed: viewModel.openDrawer,
                  iconNotificationsPressed: viewModel.openNotificationsDrawer,
                ),
              ),
              body: Stack(
                children: [
                  viewModel.pageList
                      .elementAt(viewModel.selectedBottomBarIndex.value),
                ],
              ),
              bottomNavigationBar: BottomNavBarCustom(
                switchPage: (index) => viewModel.switchPage(index),
                selectedBottomBarIndex: viewModel.selectedBottomBarIndex,
              ),
            ),
          ),
        ));
  }
}
