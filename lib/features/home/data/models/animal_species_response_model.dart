import 'package:animals_checker_get/core/contracts/data/model.dart';
import 'package:animals_checker_get/features/home/data/models/animal_model.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_species_response_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'animal_species_response_model.g.dart';

@JsonSerializable()
class AnimalSpeciesResponseModel extends Model<AnimalSpeciesResponseEntity> {
  final int? count;
  final String? category;
  @JsonKey(name: 'result')
  final List<AnimalModel>? animalList;

  AnimalSpeciesResponseModel({
    this.count,
    this.category,
    this.animalList
  });

  @override
  AnimalSpeciesResponseEntity toEntity() {
    return AnimalSpeciesResponseEntity(
      count: count,
      category: category,
      animalList: animalList?.map((e) => e.toEntity()).toList()
    );
  }

  factory AnimalSpeciesResponseModel.fromEntity(AnimalSpeciesResponseEntity? entity) {
    return AnimalSpeciesResponseModel(
      count: entity?.count,
      category: entity?.category,
      animalList: entity?.animalList?.map((e) => AnimalModel.fromEntity(e)).toList(),
    
    );
  }

  factory AnimalSpeciesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AnimalSpeciesResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimalSpeciesResponseModelToJson(this);
}