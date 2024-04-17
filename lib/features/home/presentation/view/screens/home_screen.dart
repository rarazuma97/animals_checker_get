import 'package:animals_checker_get/features/home/presentation/view/widgets/animal_list_item.dart';
import 'package:animals_checker_get/features/home/presentation/view/widgets/dynamic_data_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:animals_checker_get/core/contracts/presentation/screen.dart';
import 'package:animals_checker_get/features/home/presentation/view_models/home_view_model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends Screen<HomeViewModel> {
  HomeScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (state) => SizedBox(
        width: context.width,
        child: Row(
          children:[
            Expanded(
              child: ListView.builder(
                //physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: viewModel.animalList.length,
                itemBuilder: (context, index) {
                  return AnimalListItem(
                      onGesture:(id) => viewModel.showAnimalDetail(id),
                      animal: viewModel.animalList[index]);
                },
              ),
            ),
           context.width < 1250
            ? const SizedBox()
            : Container(
              constraints: const BoxConstraints(
                  minWidth: 400
              ),
              color: Colors.white,
              height: context.height,
              child:   viewModel.animalSearched != null
                  ? DynamicDataWidget(animal: viewModel.animalSearched!)
                  : const Center(
                child: Text(
                  'Seleziona un elemento per vedere la preview',
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
