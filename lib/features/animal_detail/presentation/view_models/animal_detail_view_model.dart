import 'package:animals_checker_get/core/contracts/presentation/view_model.dart';
import 'package:animals_checker_get/features/animal_detail/domain/animal_detail_repository.dart';
import 'package:animals_checker_get/features/animal_detail/domain/entity/extended_info_entity.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class AnimalDetailViewModel extends ViewModel {
  AnimalDetailViewModel(this._animalDetailRepository);

  final AnimalDetailRepository _animalDetailRepository;


  ExtendedInfoEntity? animalInfo;
  int? id;

  @override
  void onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
    id = Get.arguments['id'];
    await initNarrative();
    change(null, status: RxStatus.success());
  }

  Future<void> initNarrative() async {
    var response = await _animalDetailRepository.getAnimalNarrative(id.toString());
    if(response != null) {
      animalInfo = response.result!.first;
    }
  }

}
