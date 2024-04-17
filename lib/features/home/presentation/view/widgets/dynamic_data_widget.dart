import 'package:animals_checker_get/base/namespaces/app_styles.dart';
import 'package:animals_checker_get/features/home/data/models/animal_by_id_model.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_by_id_entity.dart';
import 'package:flutter/material.dart';

class DynamicDataWidget extends StatelessWidget {
  const DynamicDataWidget({super.key, required this.animal});

  final AnimalByIdEntity animal;


  @override
  Widget build(BuildContext context) {
     var i = AnimalByIdModel.fromEntity(animal).toJson();
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children:
           i.entries.map((e) =>  buildWidget(e.key, e.value)).toList()
       ),
     );
    }

  Widget buildWidget(String label, dynamic value) {
      if(value is String) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(parseKeyMap(label), style: CustomStyles.boldTextStyle,),
            Text(value),
          ],
        );
      } else if(value is bool) {
        return Row(
          children: [
            Text(parseKeyMap(label), style: CustomStyles.boldTextStyle,),
             Switch(
                  hoverColor: Colors.transparent,
                  value: value, onChanged: (sd) {})
          ],
        );
      } else if (value is double) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(parseKeyMap(label), style: CustomStyles.boldTextStyle,),
            Text(value.toString()),
          ],
        );
      } else if (value is int) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(parseKeyMap(label), style: CustomStyles.boldTextStyle,),
            Text(value.toString()),
          ],
        );}
        else {
        return const SizedBox();
      }
  }

  String parseKeyMap(String label) {
    switch (label) {
      case 'taxonid':
        return 'ID';
      case 'scientific_name':
        return 'Nome scientifico';
      case 'kingdom':
        return 'Regno';
      case 'phylum':
        return 'Tipo';
      case 'class':
        return 'Classe';
      case 'family':
        return 'Famiglia';
      case 'order':
        return 'Ordine';
      case 'genus':
        return 'Genus';
      case 'authority':
        return 'Autoritá';
      case 'assessment_date':
        return 'Data di valutazione';
      case 'category':
        return 'Categoria';
      case 'criteria':
        return 'Criterio';
      case 'marine_system':
        return 'Sistema marino';
      case 'freshwater_system':
        return 'Sistema di acqua dolce';
      case 'assessor':
        return 'Accertatore ';
      case 'terrestrial_system':
        return 'Sistema di terra';
        default: return '';
    }
  }
}
