import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/custom_app_bar.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/custom_drawer.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view_models/main_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopMainScreenBody extends StatelessWidget {
  const DesktopMainScreenBody({super.key, required this.viewModel});

  final MainScreenViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              key: viewModel.scaffoldKey,
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(80),
                child: CustomAppBar(
                  showHamburgerIcon: false,
                  iconMenuPressed: viewModel.openDrawer,
                  title: 'Specie Vulnerabili',

                ),
              ),
              body: Row(
                children: [
                  CustomDrawer(
                      index: viewModel.selectedBottomBarIndex.value,
                      onTapItem: viewModel.switchPage,
                      isDesktop: true,
                      logoutGesture: () => viewModel.logout(),
                      ),
                  Expanded(
                    child: viewModel.pageList
                        .elementAt(viewModel.selectedBottomBarIndex.value),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
