 
import 'package:animals_checker_get/core/contracts/domain/entity.dart';

abstract class Model<T extends Entity> {
  T toEntity();

  Map<String, dynamic> toJson();
}
