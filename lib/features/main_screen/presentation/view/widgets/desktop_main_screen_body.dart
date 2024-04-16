import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/custom_app_bar.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/custom_drawer.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view_models/main_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopMainScreenBody extends StatelessWidget {
  const DesktopMainScreenBody({Key? key, required this.viewModel})
      : super(key: key);

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
                  iconMenuPressed: viewModel.openDrawer,
                  iconNotificationsPressed: viewModel.openNotificationsDrawer,
                ),
              ),
              body: Row(
                children: [
                  CustomDrawer(
                      index: viewModel.selectedBottomBarIndex.value,
                      onTapItem: viewModel.switchPage,
                      isDesktop: true,
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
