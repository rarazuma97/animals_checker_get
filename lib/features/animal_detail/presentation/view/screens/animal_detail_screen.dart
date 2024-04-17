import 'package:animals_checker_get/features/animal_detail/presentation/view/widgets/desktop_animal_detail_screen.dart';
import 'package:animals_checker_get/features/animal_detail/presentation/view_models/animal_detail_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:animals_checker_get/core/contracts/presentation/screen.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimalDetailScreen extends Screen<AnimalDetailViewModel> {
  AnimalDetailScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (state) => LayoutBuilder(
        builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (ctx) => DesktopAnimalDetailScreen(animalInfo: viewModel.animalInfo!,),
         desktop: (ctx) => DesktopAnimalDetailScreen(animalInfo: viewModel.animalInfo!,),
        ),
      )
    );
  }
}
