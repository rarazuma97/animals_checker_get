 
import 'package:animals_checker_get/core/contracts/domain/entity.dart';
import 'package:animals_checker_get/base/utils/sorting.dart';

class Params<E extends Entity> {
  Params({
    this.entity,
    this.page,
    this.records,
    this.sort,
    this.filters,
  });

  E? entity;
  int? page;
  int? records;
  Map<String, SortOrder>? sort;
  Map<String, dynamic>? filters;
}
