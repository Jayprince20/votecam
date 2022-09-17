// To parse this JSON data, do
//
//     final tokenModel = tokenModelFromMap(jsonString);

import 'dart:convert';

TokenModel tokenModelFromMap(String str) =>
    TokenModel.fromMap(json.decode(str));

String tokenModelToMap(TokenModel data) => json.encode(data.toMap());

class TokenModel {
  TokenModel({
    this.jwt,
  });

  final String? jwt;

  factory TokenModel.fromMap(Map<String, dynamic> json) => TokenModel(
        jwt: json["jwt"],
      );

  Map<String, dynamic> toMap() => {
        "jwt": jwt,
      };
}
