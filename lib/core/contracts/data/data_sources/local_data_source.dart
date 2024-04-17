import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/core/contracts/data/data_sources/data_source.dart';
 
import 'package:animals_checker_get/core/contracts/domain/entity.dart';
import 'package:animals_checker_get/base/utils/params.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BaseLocalDataSource<E extends Entity, P extends Params<E>>
    extends DataSource<E, P> {
  SharedPreferences get preferences => Get.find<SharedPreferences>();
}

// abstract class LocalDataSource<E extends Entity, P extends Params<E>>
//     extends BaseLocalDataSource<E, P> {
//   Future<List<E?>> findAll(P? params);
//
//   Future<void> saveAll(List<E?> entities);
//
//   Future<void> delete();
// }

@optionalTypeArgs
abstract class LocalDataSource<E extends Entity, P extends Params<E>>
    extends BaseLocalDataSource<E, P> {}
