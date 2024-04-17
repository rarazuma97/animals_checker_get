 import 'package:get/get.dart';
 import 'package:animals_checker_get/core/contracts/generic/binding.dart';
import 'package:animals_checker_get/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:animals_checker_get/features/home/data/data_sources/home_remote_data_source_impl.dart';
import 'package:animals_checker_get/features/home/domain/home_repostory_impl.dart';
import 'package:animals_checker_get/features/home/domain/home_repository.dart';
import 'package:animals_checker_get/features/home/presentation/view_models/home_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
 


class HomeBinding extends Binding {
  @override
  void dependencies() {

    Get.lazyPut<HomeRemoteDataSource>(HomeRemoteDataSourceImpl.new);

    Get.lazyPut<HomeRepository>(
      () => HomeRepositoryImpl(
        Get.find<HomeRemoteDataSource>()
      ),
    );

    Get.lazyPut(
      () => HomeViewModel(
          Get.find<HomeRepository>(),
          Get.find<SharedPreferences>(),
      )
    );
  }
}
