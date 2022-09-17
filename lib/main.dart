import 'package:flutter/material.dart';
import 'package:sigve/route/AppRoute.dart';
import 'package:sigve/route/PageRoute.dart';
import 'package:sigve/screens/home/HomeBinding.dart';
import 'package:sigve/screens/login/LoginScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.LOGIN,
      defaultTransition: Transition.fade,
      initialBinding: HomeBinding(),
      getPages: AppPages.pages,
      home: LoginScreen(),
    ),
  );
}
