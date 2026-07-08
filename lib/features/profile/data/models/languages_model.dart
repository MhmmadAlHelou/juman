// To parse this JSON data, do
//
//     final languagesModel = languagesModelFromJson(jsonString);

import 'dart:convert';

LanguagesModel languagesModelFromJson(String str) =>
    LanguagesModel.fromJson(json.decode(str));

String languagesModelToJson(LanguagesModel data) => json.encode(data.toJson());

class LanguagesModel {
  final List<LanguageData> results;

  LanguagesModel({
    required this.results,
  });

  factory LanguagesModel.fromJson(Map<String, dynamic> json) => LanguagesModel(
        results: json["results"] == null
            ? <LanguageData>[]
            : List<LanguageData>.from(
                json["results"]!.map((dynamic x) => LanguageData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        "results": List<dynamic>.from(results.map((dynamic x) => x.toJson())),
      };
}

class LanguageData {
  final String code;
  final String name;

  LanguageData({
    required this.code,
    required this.name,
  });

  factory LanguageData.fromJson(Map<String, dynamic> json) => LanguageData(
        code: json["code"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        "code": code,
        "name": name,
      };
}
