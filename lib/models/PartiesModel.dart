// To parse this JSON data, do
//
//     final partiesModel = partiesModelFromMap(jsonString);

import 'dart:convert';

List<PartiesModel> partiesModelFromMap(String str) => List<PartiesModel>.from(
    json.decode(str).map((x) => PartiesModel.fromMap(x)));

String partiesModelToMap(List<PartiesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class PartiesModel {
  PartiesModel({
    this.idPartis,
    this.nomPartis,
    this.nomLeader,
    this.dateCreation,
    this.logoPartis,
    this.devise,
    this.but,
  });

  final int? idPartis;
  final String? nomPartis;
  final String? nomLeader;
  final DateTime? dateCreation;
  final String? logoPartis;
  final String? devise;
  final String? but;

  factory PartiesModel.fromMap(Map<String, dynamic> json) => PartiesModel(
        idPartis: json["id_partis"],
        nomPartis: json["nom_partis"],
        nomLeader: json["nom_leader"],
        dateCreation: DateTime.parse(json["date_creation"]),
        logoPartis: json["logo_partis"],
        devise: json["devise"],
        but: json["but"],
      );

  Map<String, dynamic> toMap() => {
        "id_partis": idPartis,
        "nom_partis": nomPartis,
        "nom_leader": nomLeader,
        "date_creation": dateCreation!.toIso8601String(),
        "logo_partis": logoPartis,
        "devise": devise,
        "but": but,
      };
}
