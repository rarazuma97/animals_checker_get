import 'package:flutter/material.dart';

class BuildInfoData extends StatelessWidget {
  
  final String value;
  
  const BuildInfoData({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return  Text(value);
  }
}
