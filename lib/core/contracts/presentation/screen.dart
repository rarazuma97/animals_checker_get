// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/material.dart';
 import 'package:get/get.dart' show GetResponsiveView;
 
import 'package:animals_checker_get/core/contracts/presentation/view_model.dart';

abstract class Screen<T extends ViewModel> extends GetResponsiveView<T> {
  Screen({super.key});

  T get viewModel => controller;

  BuildContext get context => screen.context;

  //AppLocalizations get tr => AppLocalizations.of(context)!;

  @override
  @protected
  Widget build(BuildContext context) {
    screen.context = context;
    viewModel.context = context;
    Widget? widget;
    if (alwaysUseBuilder) {
      widget = builder();
      if (widget != null) return widget;
    }
    if (screen.isDesktop) {
      widget = desktop() ?? widget;
      if (widget != null) return widget;
    }
    if (screen.isTablet) {
      widget = tablet() ?? desktop();
      if (widget != null) return widget;
    }
    if (screen.isPhone) {
      widget = phone() ?? tablet() ?? desktop();
      if (widget != null) return widget;
    }
    return watch() ?? phone() ?? tablet() ?? desktop() ?? builder()!;
  }
}
