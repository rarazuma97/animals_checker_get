import 'package:animals_checker_get/core/contracts/domain/entity.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_entity.dart';

class AnimalSpeciesResponseEntity extends Entity {
  final int? count;
  final String? category;
  final List<AnimalEntity>? animalList;

  const AnimalSpeciesResponseEntity({
       this.count,
       this.category,
       this.animalList
  });
}