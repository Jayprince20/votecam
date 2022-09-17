// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sigve/core/apiLibrary.dart';
import 'package:sigve/core/constant.dart';
import 'package:sigve/models/PartiesModel.dart';
import 'package:sigve/models/TokenModel.dart';

class RemoteProvider {
  static const base_url = Constant.Dvaddress;

  void connexion({
    String? email,
    String? password,
    Function()? beforeSend,
    Function(TokenModel token)? onSuccess,
    Function(DioError error)? onError,
  }) {
    ApiRequest(
        url: base_url + "authenticate",
        data: {"email": email!, "password": password!}).post(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        print(data);
        print(TokenModel.fromMap(data).jwt);
        onSuccess!(TokenModel.fromMap(data));
      },
      onError: (error) {
        print("Errors");
        print(error.message);
        return {if (onError != null) onError(error)};
      },
    );
  }

  void registration(
      {int? cni,
      String? date_naissance,
      String? lieu_naissance,
      String? lieu_residence,
      String? profession,
      String? email,
      String? password,
      String? photo,
      String? fingerprint,
      Function(dynamic user)? onSucess,
      Function(DioError error)? onError,
      Function()? beforeSend}) {
    ApiRequest(
      url: base_url + 'register',
      data: {
        "cni": cni,
        "date_naissance": date_naissance,
        "lieu_naissance": lieu_naissance,
        "lieu_residence": lieu_residence,
        "profession": profession,
        "email": email,
        "password": password,
        "photo": photo,
        "fingerprint": fingerprint,
      },
    ).post(
        beforeSend: () => {if (beforeSend != null) beforeSend()},
        onSuccess: (data) {
          onSucess!(data);
        },
        onError: (error) => {if (onError != null) onError(error)});
  }

  void getParties({
    Function()? beforeSend,
    Function(List<PartiesModel> place)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    ApiRequest(
      url: base_url + "parties",
      data: null,
    ).get(
      beforeSend: () => {if (beforeSend == null) beforeSend!()},
      onSuccess: (data) {
        print(data);
        final res = List<PartiesModel>.from(
            data.map((element) => PartiesModel.fromMap(element)).toList());

        onSuccess!(res);
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
