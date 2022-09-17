import 'package:get/get.dart';
import 'package:sigve/route/PageRoute.dart';
import 'package:sigve/screens/home/HomeBinding.dart';
import 'package:sigve/screens/home/HomeScreen.dart';
import 'package:sigve/screens/homedetails/HomeDetails.dart';
import 'package:sigve/screens/homedetails/HomedetailsBinding.dart';
import 'package:sigve/screens/login/LoginBinding.dart';
import 'package:sigve/screens/login/LoginScreen.dart';
import 'package:sigve/screens/register/RegisterBinding.dart';
import 'package:sigve/screens/register/RegisterScreen.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.HOME,
      transition: Transition.fadeIn,
      binding: HomeBinding(),
      page: () => HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      transition: Transition.fadeIn,
      binding: LoginBinding(),
      page: () => LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.Register,
      transition: Transition.fadeIn,
      binding: RegisterBinding(),
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: AppRoutes.ProfileDetails,
      binding: HomeDetailsBinding(),
      transition: Transition.fadeIn,
      page: () => HomeDetails(),
    ),
  ];
}
