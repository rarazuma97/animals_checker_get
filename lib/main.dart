import 'package:animals_checker_get/base/namespaces/app_colors.dart';
import 'package:animals_checker_get/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/core/app/bindings/app_binding.dart';
import 'package:animals_checker_get/base/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppBinding().dependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.redColor),
        useMaterial3: true,
      ),
      initialRoute: AppRouter.initial,
      getPages: AppRouter.pages,
    );
  }
}
