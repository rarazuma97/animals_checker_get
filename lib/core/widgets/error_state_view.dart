 import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:animals_checker_get/base/namespaces/dimensions.dart';
     
class ErrorStateView extends GetView {
  const ErrorStateView(this.message, {super.key});

  final String? message;

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: Text('error'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             const Icon(Icons.error),
            const SizedBox(height: Dimensions.gapXXL),
            Text(
              message ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  
  }

 }




