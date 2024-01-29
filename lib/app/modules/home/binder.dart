import 'package:get/get.dart';
import 'package:myapp_4/app/modules/home/controller/home_controller.dart';

class HomeBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
