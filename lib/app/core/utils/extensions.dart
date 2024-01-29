import 'package:get/get.dart';

extension PercentSized on double {
  double get hp => (Get.height * (this / 100));
  double get wp => (Get.width * (this / 100));

  static double width() {
    return Get.width;
  }

  static double height() {
    return Get.height;
  }
}

extension ResponsiveText on double {
  double get sp => Get.width / 100 * (this / 3);
}
