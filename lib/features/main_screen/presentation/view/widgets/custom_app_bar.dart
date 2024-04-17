import 'package:animals_checker_get/base/namespaces/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.iconMenuPressed, required this.showHamburgerIcon, this.showArrowBack});

  final Function() iconMenuPressed;
  final bool showHamburgerIcon;
  final bool? showArrowBack;

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
          showArrowBack ?? false
          ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: IconButton(onPressed: () {
              Get.back();
            }, icon: const Icon(Icons.arrow_back_ios_new)),
          )
          : Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Image.asset('lib/assets/logo.png'),
          ),
         showHamburgerIcon ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: iconMenuPressed,
                      icon: const Icon(
                        Icons.menu,
                        color: AppColors.cardPrimary,
                      ))
                ],
              ),
            ),
          ) : const SizedBox.shrink()
        ],
      ),
    );
  }
}
