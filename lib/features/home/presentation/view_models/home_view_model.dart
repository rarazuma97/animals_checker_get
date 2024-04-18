import 'package:animals_checker_get/base/router/app_routes.dart';
import 'package:animals_checker_get/core/contracts/presentation/view_model.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_by_id_entity.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_entity.dart';
import 'package:animals_checker_get/features/home/domain/home_repository.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeViewModel extends ViewModel {
  HomeViewModel(this._homeRepository, this._sharedPreferences);

  final HomeRepository _homeRepository;
  final SharedPreferences _sharedPreferences;

  List<AnimalEntity> animalList = [];

  AnimalByIdEntity? animalSearched;

  @override
  void onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
    await initAnimals();
    change(null, status: RxStatus.success());
  }

  Future<void> initAnimals() async {
    change(null, status: RxStatus.loading());
    var response = await _homeRepository.getAnimalSpecies();
    if (response != null) {
      animalList = response.animalList!;
    }
    update();
    change(animalList, status: RxStatus.success());
  }

  Future<void> showAnimalDetail(int id) async {
    var response = await _homeRepository.getAnimalByid(id.toString());
    if(response != null) {
      animalSearched = response.result!.first;
    }
    update();
  }

  void navigateToDetail(int? id){
    _sharedPreferences.setInt('id', animalSearched!.taxonid!);
    _sharedPreferences.setString('name', animalSearched!.scientificName!);
    Get.offAndToNamed(Routes.animalDetail, arguments: {
      'id' :  animalSearched?.taxonid,
      'name' : animalSearched?.scientificName,
    });
  }
}
