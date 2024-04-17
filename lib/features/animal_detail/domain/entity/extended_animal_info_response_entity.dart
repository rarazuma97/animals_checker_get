
import 'package:animals_checker_get/core/contracts/domain/entity.dart';
import 'package:animals_checker_get/features/animal_detail/domain/entity/extended_info_entity.dart';

class ExtendedAnimalInfoResponseEntity extends Entity {
  final String? name;
  final List<ExtendedInfoEntity>? result;

  const ExtendedAnimalInfoResponseEntity({
    this.name,
    this.result,

  });
}