import 'package:animals_checker_get/core/contracts/data/data_sources/remote_data_source.dart';
import 'package:animals_checker_get/features/animal_detail/domain/entity/extended_animal_info_response_entity.dart';


abstract class AnimalDetailRemoteDataSource extends RemoteDataSource {
  Future<ExtendedAnimalInfoResponseEntity?> getAnimalNarrative(String id);

}
