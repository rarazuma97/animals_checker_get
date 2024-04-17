import 'package:animals_checker_get/features/animal_detail/domain/entity/extended_info_entity.dart';
import 'package:animals_checker_get/features/animal_detail/presentation/view/widgets/build_info_data.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopAnimalDetailScreen extends StatelessWidget {
  const DesktopAnimalDetailScreen({super.key, required this.animalInfo});

  final ExtendedInfoEntity animalInfo;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: CustomAppBar(
          showArrowBack: true,
          showHamburgerIcon: false,
          iconMenuPressed: () {},
        ),
      ),
      body: Center(
        child: SizedBox(
          width: context.width * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildInfoData(value: animalInfo.conservationmeasures ?? ''),
              BuildInfoData(value: animalInfo.geographicrange ?? ''),
              BuildInfoData(value: animalInfo.habitat ?? ''),
              BuildInfoData(value: animalInfo.population ?? ''),
              BuildInfoData(value: animalInfo.rationale ?? ''),
              BuildInfoData(value: animalInfo.taxonomicnotes ?? ''),
              BuildInfoData(value: animalInfo.threats ?? ''),
              BuildInfoData(value: animalInfo.usetrade ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
