import 'package:animals_checker_get/base/namespaces/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.iconNotificationsPressed,
      required this.iconMenuPressed});

  final Function() iconNotificationsPressed;
  final Function() iconMenuPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              width: 120,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: iconMenuPressed,
                    icon: const Icon(Icons.menu, color: AppColors.cardPrimary,)
                  
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
