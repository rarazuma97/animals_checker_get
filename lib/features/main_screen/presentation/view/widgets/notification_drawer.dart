import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationDrawer extends StatelessWidget {
  const NotificationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.width * 0.55,
        height: context.height,
        decoration: const BoxDecoration(color: Colors.white));
  }
}
