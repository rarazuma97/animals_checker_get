import 'package:flutter/material.dart';
import 'package:animals_checker_get/base/namespaces/app_colors.dart';

class BottomBarIndicator extends StatefulWidget {
  const BottomBarIndicator({super.key, required this.isActive, required this.icon});
  final bool isActive;
  final IconData icon;

  @override
  State<BottomBarIndicator> createState() => _BottomBarIndicatorState();
}

class _BottomBarIndicatorState extends State<BottomBarIndicator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(widget.icon, size: 24, color: widget.isActive ? AppColors.primary : AppColors.deactivateIcon,),
        Padding(
          padding: const EdgeInsets.only(top:5.0),
          child: SizedBox(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.only(bottom: 2),
              height: 4,
              width: widget.isActive ? 15 : 0,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
