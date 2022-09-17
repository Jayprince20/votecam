import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigve/provider/RemoteProvider.dart';
import 'package:sigve/route/PageRoute.dart';

class RegisterController extends GetxController {
  final cni = 0.obs;
  final date_naissance = "".obs;
  final lieu_naissance = "".obs;
  final lieu_residence = "".obs;
  final profession = "".obs;
  final password = "".obs;
  final email = "".obs;
  final photo = "".obs;
  final fingerprint = "".obs;

  void onRegistrieUser() async {
    RemoteProvider().registration(
      cni: cni.value,
      date_naissance: date_naissance.value,
      lieu_naissance: lieu_naissance.value,
      lieu_residence: lieu_residence.value,
      profession: profession.value,
      password: password.value,
      email: email.value,
      photo: photo.value,
      fingerprint: fingerprint.value,
      beforeSend: () {
        print("useInfo");
      },
      onSucess: (user) {
        print(user);
        Get.toNamed(AppRoutes.HOME);
      },
      onError: (error) {
        print("Error : " + error.response!.data["message"]);
        Get.snackbar("Erreur D'inscription", error.response!.data["message"],
            colorText: Colors.white, backgroundColor: Colors.red);
      },
    );
  }
}
