import 'package:get/get.dart';
import 'package:sigve/screens/login/LoginController.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginControllers());
  }
}
