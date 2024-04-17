import 'package:flutter/material.dart';
import 'package:animals_checker_get/base/namespaces/app_colors.dart';
import 'package:animals_checker_get/base/namespaces/app_styles.dart';

class LogoutDrawerItem extends StatelessWidget {
  const LogoutDrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.logout,  color: AppColors.redColor,size: 24,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Logout',
            style: CustomStyles.mediumTextStyle.copyWith(
                fontWeight: FontWeight.w500, color: AppColors.redColor),
          ),
        )
      ],
    );
  }
}
