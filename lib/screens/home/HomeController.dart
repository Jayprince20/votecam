import 'package:get/get.dart';
import 'package:sigve/models/PartiesModel.dart';
import 'package:sigve/provider/RemoteProvider.dart';

class HomeController extends GetxController {
  final partiesList = <PartiesModel>[].obs;

  @override
  void onInit() {
    getPartiesList();
    super.onInit();
  }

  void getPartiesList() {
    RemoteProvider().getParties(onSuccess: (parties) {
      partiesList.value = parties;
    });
  }
}
