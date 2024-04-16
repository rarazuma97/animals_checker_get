import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animals_checker_get/core/app/bindings/app_binding.dart';
import 'package:animals_checker_get/base/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRouter.initial,
      getPages: AppRouter.pages,
    );
  }
}
