import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/botton_nav_bar_item.dart';

class BottomNavBarCustom extends StatelessWidget {
  const BottomNavBarCustom(
      {super.key,
      required this.switchPage,
      required this.selectedBottomBarIndex});

  final Function(int) switchPage;
  final RxInt selectedBottomBarIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      width: MediaQuery.of(context).size.width,
      height: 85,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30,5,30,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  switchPage(0);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BottomBarIndicator(
                      isActive: selectedBottomBarIndex.value == 0,
                      icon: 'assets/icons/home.svg',
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  switchPage(1);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BottomBarIndicator(
                      isActive: selectedBottomBarIndex.value == 1,
                      icon: 'assets/icons/reel.svg',
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  switchPage(2);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BottomBarIndicator(
                      isActive: selectedBottomBarIndex.value == 2,
                      icon: 'assets/icons/add.svg',
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  switchPage(3);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BottomBarIndicator(
                      isActive: selectedBottomBarIndex.value == 3,
                      icon: 'assets/icons/search.svg',
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  switchPage(4);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BottomBarIndicator(
                      isActive: selectedBottomBarIndex.value == 4,
                      icon: 'assets/icons/account.svg',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
