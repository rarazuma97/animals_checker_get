import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animals_checker_get/base/namespaces/app_colors.dart';
import 'package:animals_checker_get/base/namespaces/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.icon,
      required this.text,
      required this.isActive,
      required this.onTapItem,
      required this.index});

  final IconData icon;
  final String text;
  final int index;
  final bool isActive;
  final Function(int) onTapItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapItem(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11),
        child: Row(
          children: [
            Icon(
              icon,
              color: isActive ? AppColors.primary : AppColors.deactivateIcon,
              size: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                text,
                style: CustomStyles.mediumTextStyle.copyWith(
                    fontWeight: isActive ? FontWeight.w500 : FontWeight.normal,
                    color: isActive
                        ? AppColors.primary
                        : AppColors.deactivateIcon),
              ),
            )
          ],
        ),
      ),
    );
  }
}
