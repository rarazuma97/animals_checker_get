import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/bottom_nav_bar.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/custom_app_bar.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/custom_drawer.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view_models/main_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class MobileMainScreenBody extends StatelessWidget {
  const MobileMainScreenBody({Key? key, required this.viewModel}) : super(key: key);

  final MainScreenViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return   Obx(() => Container(
            color: Colors.white,
            child: SafeArea(
              child: Scaffold(
                key: viewModel.scaffoldKey,
                drawer: CustomDrawer(
                  isDesktop: false,
                  index: viewModel.selectedBottomBarIndex.value,
                  onTapItem: viewModel.switchPage),
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(80),
                  child: CustomAppBar(
                    showHamburgerIcon: true,
                    iconMenuPressed: viewModel.openDrawer,
                  ),
                ),
                body: viewModel.pageList
                    .elementAt(viewModel.selectedBottomBarIndex.value),
                bottomNavigationBar: BottomNavBarCustom(
                  switchPage: (index) => viewModel.switchPage(index),
                  selectedBottomBarIndex: viewModel.selectedBottomBarIndex,
                ),
              ),
            ),
          ));
  }
}