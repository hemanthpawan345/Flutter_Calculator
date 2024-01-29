import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp_4/app/modules/home/binder.dart';
import 'package:myapp_4/app/modules/home/view.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinder(),
      home: const CalculatorPage(),
    );
  }
}
