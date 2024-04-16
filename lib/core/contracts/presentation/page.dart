import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' show GetPage;
import 'package:animals_checker_get/core/utils/arguments.dart';
 
typedef ScreenBuilder = Widget Function();

@optionalTypeArgs
abstract class Page<T> extends GetPage<T> {
  Page({
    required super.name,
    required super.page,
    super.binding,
    super.bindings,
    super.middlewares,
    super.children,
  });

  // shorthand syntax.
  static Arguments get args => Arguments();
}
