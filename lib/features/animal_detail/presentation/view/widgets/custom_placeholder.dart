import 'package:flutter/material.dart';

class CustomPlacholder extends StatelessWidget {
  const CustomPlacholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Image.asset('lib/assets/logo.png'),
    );
  }
}