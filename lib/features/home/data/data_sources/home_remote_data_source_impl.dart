import 'package:animals_checker_get/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_species_response_entity.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<AnimalSpeciesResponseEntity?> getAnimalSpecies() async  {
    try {
      return null;
    } catch (e) {}
  }
}
