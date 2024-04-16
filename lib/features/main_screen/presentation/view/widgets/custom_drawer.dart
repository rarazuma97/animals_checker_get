import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/drawer_item.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/logout_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.index, required this.onTapItem});

  final Function(int) onTapItem;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.55,
      height: context.height,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 10, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: [
                      DrawerItem(
                        index: 0,
                        onTapItem: (p0) => onTapItem(p0),
                        icon: 'home',
                        text: 'Home',
                        isActive: index == 0,
                      ),
                      DrawerItem(
                        index: 3,
                        onTapItem: (p0) => onTapItem(p0),
                        icon: 'search',
                        text: 'Cerca',
                        isActive: index == 3,
                      ),
                      DrawerItem(
                        index: 2,
                        onTapItem: (p0) => onTapItem(p0),
                        icon: 'add',
                        text: 'Aggiungi contenuto',
                        isActive: index == 2,
                      ),
                      DrawerItem(
                        index: 1,
                        onTapItem: (p0) => onTapItem(p0),
                        icon: 'reel',
                        text: 'Reels',
                        isActive: index == 1,
                      ),
                      DrawerItem(
                        index: 4,
                        onTapItem: (p0) => onTapItem(p0),
                        icon: 'account',
                        text: 'Account',
                        isActive: index == 4,
                      ),
                      DrawerItem(
                        index: 5,
                        onTapItem: (p0) => onTapItem(p0),
                        icon: 'settings',
                        text: 'Settings',
                        isActive: index == 5,
                      ),
                      DrawerItem(
                        index: 6,
                        onTapItem: (p0) => onTapItem(p0),
                        icon: 'favorite',
                        text: 'Preferiti',
                        isActive: index == 6,
                      ),
                
                    ],
                  ),
                ),
              ],
            ),
           const LogoutDrawerItem()
          ],
        ),
      ),
    );
  }
}

