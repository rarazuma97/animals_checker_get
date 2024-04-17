import 'package:flutter/material.dart';
 
import 'package:animals_checker_get/core/contracts/domain/entity.dart';
import 'package:animals_checker_get/base/utils/params.dart';

abstract class BaseRepository<ID, E extends Entity, P extends Params<E>> {
 
}


@optionalTypeArgs
abstract class Repository<ID, E extends Entity, P extends Params<E>>
    extends BaseRepository<ID, E, P> {}
