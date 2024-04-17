  
 import 'package:animals_checker_get/core/contracts/generic/repository.dart';
import 'package:animals_checker_get/features/animal_detail/domain/entity/extended_animal_info_response_entity.dart';

abstract class AnimalDetailRepository extends Repository {

 Future<ExtendedAnimalInfoResponseEntity?> getAnimalNarrative(String id);


}
