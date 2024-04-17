
import 'package:animals_checker_get/core/contracts/domain/entity.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_by_id_entity.dart';

class AnimalByIdResponseEntity extends Entity {
  final String? name;
  final List<AnimalByIdEntity>? result;

  const AnimalByIdResponseEntity({
    this.name,
    this.result,

  });
}