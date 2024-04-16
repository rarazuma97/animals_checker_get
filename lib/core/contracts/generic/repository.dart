import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
import 'package:animals_checker_get/core/contracts/domain/entity.dart';
import 'package:animals_checker_get/core/utils/params.dart';

abstract class BaseRepository<ID, E extends Entity, P extends Params<E>> {
  // @protected
  // bool get isConnected => Get.find<ConnectivityService>().isConnected;
}

// abstract class Repository<ID, E extends Entity, P extends Params<E>>
//     extends BaseRepository<ID, E, P> {
//   Future<E?> find(ID id);
//
//   // sorting, pages, record
//   Future<List<E?>> findAll({P? params});
//
//   Future<void> save(E entity);
//
//   Future<void> update(ID id, E entity);
//
//   Future<void> delete(ID id);
// }

@optionalTypeArgs
abstract class Repository<ID, E extends Entity, P extends Params<E>>
    extends BaseRepository<ID, E, P> {}
