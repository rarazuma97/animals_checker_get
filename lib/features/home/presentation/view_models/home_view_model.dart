 import 'package:animals_checker_get/core/contracts/presentation/view_model.dart';
import 'package:animals_checker_get/features/home/domain/home_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
 

class HomeViewModel extends ViewModel  {
  HomeViewModel(
      this._homeRepository,
      this._sharedPreferences
    );

  final HomeRepository _homeRepository;
  final SharedPreferences _sharedPreferences;

 

  
   @override
  void onInit() async {
     super.onInit();
  }

}
