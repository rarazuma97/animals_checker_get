import 'package:animals_checker_get/base/router/app_routes.dart';
import 'package:animals_checker_get/core/contracts/presentation/page.dart';
import 'package:animals_checker_get/features/animal_detail/bindings/animal_detail_bindings.dart';
import 'package:animals_checker_get/features/animal_detail/presentation/view/screens/animal_detail_screen.dart';

 
class AnimalDetailPage extends Page {
  AnimalDetailPage()
      : super(
          name: Routes.animalDetail,
          page: AnimalDetailScreen.new,
          binding: AnimalDetailBinding(),
        );
}
