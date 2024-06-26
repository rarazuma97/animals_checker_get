import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/drawer_item.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/logout_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer(
      {super.key,
      required this.index,
      required this.onTapItem,
      required this.isDesktop,
      required this.logoutGesture});

  final Function(int) onTapItem;
  final Function() logoutGesture;
  final int index;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        width: isDesktop ? 270 : context.width * 0.55,
        height: context.height,
        decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.black, // Colore del bordo sinistro
                width: 0.1, // Spessore del bordo
              ),
            ),
            color: Colors.white),
        child: Padding(
          padding: EdgeInsets.only(top: isDesktop ? 10 : 20.0, left: 10, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isDesktop
                  ? const SizedBox.shrink()
                  : Image.asset('lib/assets/logo.png', width: 100,),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: DrawerItem(
                  index: 0,
                  onTapItem: (p0) => onTapItem(p0),
                  icon: Icons.home,
                  text: 'Home',
                  isActive: index == 0,
                ),
              ),
              DrawerItem(
                index: 3,
                onTapItem: (p0) => onTapItem(p0),
                icon: Icons.search,
                text: 'Cerca',
                isActive: index == 3,
              ),
              DrawerItem(
                index: 2,
                onTapItem: (p0) => onTapItem(p0),
                icon: Icons.settings,
                text: 'Impostazioni',
                isActive: index == 2,
              ),
              DrawerItem(
                index: 1,
                onTapItem: (p0) => onTapItem(p0),
                icon: Icons.account_circle_outlined,
                text: 'Account',
                isActive: index == 1,
              ),
              LogoutDrawerItem(
                logoutGesture: () => logoutGesture(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
