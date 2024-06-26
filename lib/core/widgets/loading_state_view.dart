import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:animals_checker_get/base/namespaces/app_colors.dart';
  
class LoadingStateView extends GetView{
  const LoadingStateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.white,
        child: const Center(child: CircularProgressIndicator(color: AppColors.primary,)
    ));

  }
}
