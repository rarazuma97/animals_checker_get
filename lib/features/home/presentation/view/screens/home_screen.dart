import 'package:flutter/material.dart';
 import 'package:animals_checker_get/core/contracts/presentation/screen.dart';
import 'package:animals_checker_get/features/home/presentation/view_models/home_view_model.dart';

class HomeScreen extends Screen<HomeViewModel> {
  HomeScreen({super.key});

  @override
  Widget builder() {
    return Container(
      color: Colors.white,
    );
  }
  //   return viewModel.obx(
  //     (model) {
  //       return SizedBox();
  //     },
  //   );
  // }
}
