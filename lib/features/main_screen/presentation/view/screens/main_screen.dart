import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/desktop_main_screen_body.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/mobile_main_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:animals_checker_get/core/contracts/presentation/screen.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view_models/main_screen_view_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainScreen extends Screen<MainScreenViewModel> {
  MainScreen({super.key});

  @override
  Widget builder() {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (ctx) => MobileMainScreenBody(viewModel: viewModel),
        desktop: (ctx) => DesktopMainScreenBody(viewModel: viewModel),
      ));
     
  }
}
