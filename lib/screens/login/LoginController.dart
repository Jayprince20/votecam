import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigve/provider/LocalProvider.dart';
import 'package:sigve/provider/RemoteProvider.dart';
import 'package:sigve/route/PageRoute.dart';

class LoginControllers extends GetxController {
  final GlobalKey<FormState> logInFormKey = GlobalKey<FormState>();
  final isLoading = false.obs;
  final email = "".obs;
  final password = "".obs;
  // late TextEditingController nameController,
  //     passwordController,
  //     emailController;

  @override
  void onInit() {
    // passwordController = TextEditingController();
    // emailController = TextEditingController();

    super.onInit();
  }

  void onLogin() {
    RemoteProvider().connexion(
      email: email.value,
      password: password.value,
      onSuccess: (token) {
        print(token);
        LocalProvider().saveAccessToken(token.jwt.toString());
        print("Token : " + token.jwt!);
        Get.toNamed(AppRoutes.HOME);
      },
      onError: (error) {
        Get.back();
        print("Error : " + error.toString());
        // progress?.dismiss();
      },
    );
  }
}
