import 'package:animals_checker_get/base/api/api_exception.dart';
import 'package:animals_checker_get/features/home/data/models/animal_by_id_response_model.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_by_id_response_entity.dart';
import 'package:dio/dio.dart';
import 'package:animals_checker_get/base/api/endpoints.dart';
import 'package:animals_checker_get/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:animals_checker_get/features/home/data/models/animal_species_response_model.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_species_response_entity.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<AnimalSpeciesResponseEntity?> getAnimalSpecies() async  {
    try {
      final animals = await client.get(
        endpoint: Endpoints.baseUrl + Endpoints.animalSpecies,
      );
      return AnimalSpeciesResponseModel.fromJson(animals.data).toEntity();
    } on DioException catch (error) {
      error.exceptionManager();
    }
    return null;
  }

  @override
  Future<AnimalByIdResponseEntity?> getAnimalById(String id) async  {
    try {
      final animals = await client.get(
        endpoint: Endpoints.baseUrl + Endpoints.speciesById(id),
      );
      return AnimalByIdResponseModel.fromJson(animals.data).toEntity();
    } on DioException catch (error) {
      error.exceptionManager();
    }
    return null;
  }


}


