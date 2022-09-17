import 'package:get/get.dart';
import 'package:sigve/screens/homedetails/HomeDetailsCtrl.dart';

class HomeDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeDetailsController>(
      () => HomeDetailsController(),
    );
  }
}
