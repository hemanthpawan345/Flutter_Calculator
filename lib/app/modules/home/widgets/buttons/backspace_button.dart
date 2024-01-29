import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp_4/app/core/utils/extensions.dart';

import '../../controller/home_controller.dart';

class BackspaceButton extends StatelessWidget {
  BackspaceButton({super.key});
  final ctrl = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24.0.wp,
      height: 16.0.wp,
      child: IconButton(
        icon: const Icon(Icons.backspace),
        onPressed: () => ctrl.backSpace(),
        color: Colors.black,
        style: IconButton.styleFrom(
          backgroundColor: Colors.grey[600],
        ),
      ),
    );
  }
}
