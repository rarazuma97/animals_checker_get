import 'package:animals_checker_get/core/contracts/presentation/view_model.dart';
import 'package:animals_checker_get/features/home/domain/entity/animal_entity.dart';
import 'package:animals_checker_get/features/home/domain/home_repository.dart';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeViewModel extends ViewModel {
  HomeViewModel(this._homeRepository, this._sharedPreferences);

  final HomeRepository _homeRepository;
  final SharedPreferences _sharedPreferences;

  List<AnimalEntity> animalList = [];

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

  }
}
