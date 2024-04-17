import 'package:animals_checker_get/base/namespaces/app_colors.dart';
import 'package:animals_checker_get/base/namespaces/app_styles.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_entity.dart';
import 'package:flutter/material.dart';

class AnimalListItem extends StatelessWidget {
  final AnimalEntity animal;
  final Function(int id) onGesture;

  const AnimalListItem({super.key, required this.animal, required this.onGesture});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onGesture(animal.taxonid!),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration:  BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(animal.taxonid.toString(),
                  style: CustomStyles.boldTextStyle.copyWith(
                      color: AppColors.primary),),
                Text(animal.scientificName ?? ''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
