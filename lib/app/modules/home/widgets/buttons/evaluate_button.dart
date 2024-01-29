import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp_4/app/core/utils/extensions.dart';

import '../../controller/home_controller.dart';

class EvalButton extends StatelessWidget {
  EvalButton({super.key, required this.value});
  final String value;
  final ctrl = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24.0.wp,
      height: 16.0.wp,
      child: ElevatedButton(
        onPressed: () => ctrl.evaluate(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
        ),
        child: Text(
          value,
          style:  TextStyle(
            fontSize: 8.0.wp,
          ),
        ),
      ),
    );
  }
}
