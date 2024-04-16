import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' show Get, GetMiddleware, Inst;
 import 'package:animals_checker_get/core/contracts/presentation/view_model.dart';

@optionalTypeArgs
abstract class Middleware<T extends ViewModel> extends GetMiddleware {
  final T viewModel = Get.find<T>();
}
