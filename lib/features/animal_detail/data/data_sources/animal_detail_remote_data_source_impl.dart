import 'package:animals_checker_get/base/api/api_exception.dart';
import 'package:animals_checker_get/base/api/endpoints.dart';
import 'package:animals_checker_get/features/animal_detail/data/data_sources/animal_detail_remote_data_source.dart';
import 'package:animals_checker_get/features/animal_detail/data/models/extended_animal_info_response_model.dart';
import 'package:animals_checker_get/features/animal_detail/domain/entity/extended_animal_info_response_entity.dart';
import 'package:dio/dio.dart';


class AnimalDetailRemoteDataSourceImpl extends AnimalDetailRemoteDataSource {

  @override
  Future<ExtendedAnimalInfoResponseEntity?> getAnimalNarrative(String id) async {
    try {
      final animals = await client.get(
        endpoint: Endpoints.baseUrl + Endpoints.narrativeById(id),
      );
      return ExtendedAnimalInfoResponseModel.fromJson(animals.data).toEntity();
    } on DioException catch (error) {
      error.exceptionManager();
    }
    return null;
  }

}


