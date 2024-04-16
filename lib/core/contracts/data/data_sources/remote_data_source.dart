import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/base/network/client_service.dart';
import 'package:animals_checker_get/core/contracts/data/data_sources/data_source.dart'; 
import 'package:animals_checker_get/core/contracts/domain/entity.dart';
import 'package:animals_checker_get/core/utils/params.dart';

abstract class BaseRemoteDataSource<ID, E extends Entity, P extends Params<E>>
    extends DataSource<E, P> {
  ApiClient get client => Get.find<ApiClient>();
}

// abstract class RemoteDataSource<ID, E extends Entity, P extends Params<E>>
//     extends BaseRemoteDataSource<ID, E, P> {
//   Future<E?> find(ID id);
//
//   Future<List<E?>> findAll(P? params);
//
//   Future<void> save(E entity);
//
//   Future<void> update(ID id, E entity);
//
//   Future<void> delete(ID id);
// }

@optionalTypeArgs
abstract class RemoteDataSource<ID, E extends Entity, P extends Params<E>>
    extends BaseRemoteDataSource<ID, E, P> {}
