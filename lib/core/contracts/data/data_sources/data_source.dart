import 'package:get/get.dart';
import 'package:animals_checker_get/core/contracts/domain/entity.dart';
import 'package:animals_checker_get/core/utils/params.dart';


abstract class DataSource<E extends Entity, P extends Params<E>>
    extends GetxService {}
