  
 import 'package:animals_checker_get/core/contracts/generic/repository.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_species_response_entity.dart';

abstract class HomeRepository extends Repository {

    Future<AnimalSpeciesResponseEntity?> getAnimalSpecies();

 }
