import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp_4/app/modules/home/controller/home_controller.dart';
import 'package:myapp_4/app/modules/home/widgets/buttons_display.dart';
import 'package:myapp_4/app/core/utils/extensions.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26.0.sp,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: GetBuilder<HomeController>(
          init: Get.find<HomeController>(),
          builder: (ctrl) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: PercentSized.height() * 0.37,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      ctrl.expression,
                      style: TextStyle(
                        fontSize: 55.0.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const ButtonDisplay(),
              ],
            );
          },
        ),
      ),
    );
  }
}
