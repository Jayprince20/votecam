import 'package:get/get.dart';
import 'package:sigve/screens/register/RegisterController.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
  }
}
