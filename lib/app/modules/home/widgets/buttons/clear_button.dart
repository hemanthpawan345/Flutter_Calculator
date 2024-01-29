import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp_4/app/core/utils/extensions.dart';

import '../../controller/home_controller.dart';

class ClearButton extends StatelessWidget {
  ClearButton({super.key, required this.value});
  final String value;
  final ctrl = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24.0.wp,
      height: 16.0.wp,
      child: ElevatedButton(
        onPressed: () => ctrl.clear(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
        ),
        child: Text(
          value,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.0.sp,
          ),
        ),
      ),
    );
  }
}
