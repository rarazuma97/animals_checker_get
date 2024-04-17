import 'package:flutter/material.dart';
import 'package:animals_checker_get/core/contracts/presentation/screen.dart';
import 'package:animals_checker_get/features/splashscreen/presentation/view_model/splash_view_model.dart';

class SplashScreen extends Screen<SplashViewModel> {
  SplashScreen({super.key});

  @override
  Widget builder() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image.asset(
        'lib/assets/logo.png',
        width: 200,
      )),
    );
  }
}
