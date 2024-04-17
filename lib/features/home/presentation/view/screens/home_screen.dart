import 'package:animals_checker_get/base/namespaces/app_colors.dart';
import 'package:animals_checker_get/base/namespaces/app_styles.dart';
import 'package:animals_checker_get/features/home/presentation/view/widgets/animal_list_item.dart';
import 'package:animals_checker_get/features/home/presentation/view/widgets/dynamic_data_widget.dart';
import 'package:flutter/material.dart';
 import 'package:animals_checker_get/core/contracts/presentation/screen.dart';
import 'package:animals_checker_get/features/home/presentation/view_models/home_view_model.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends Screen<HomeViewModel> {
  HomeScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (state) => ResponsiveBuilder(
        builder: (context, sizingInformation) => 
         SizedBox(
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
                        onLongGesture: (id) => viewModel.showAnimalDetail(id),
                        onGesture:(id) async {
                           await viewModel.showAnimalDetail(id);
                            viewModel.navigateToDetail(id);
                        } ,
                        animal: viewModel.animalList[index]);
                  },
                ),
              ),
             context.width < 1000
              ? const SizedBox()
              : Container(
                constraints: const BoxConstraints(
                    minWidth: 400
                ),
                color: Colors.white,
                height: context.height,
                child:   viewModel.animalSearched != null
                    ? SingleChildScrollView(
                      child: Column(
                        children: [
                          DynamicDataWidget(animal: viewModel.animalSearched!),
                          Padding(
                            padding: const EdgeInsets.only(bottom:30.0),
                            child: GestureDetector(
                              onTap: () => viewModel.navigateToDetail(null),
                              child: Text('Vedi altre informazioni',
                                style: CustomStyles.boldTextStyle.copyWith(color: AppColors.primary),),
                            ),
                          )
                        ],
                      ),
                    )
                    : const Center(
                  child: Text(
                    'Mantieni premuto su un elemento per vedere la preview',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
