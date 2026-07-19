// To parse this JSON data, do
//
//     final systemInfoModel = systemInfoModelFromJson(jsonString);

import 'dart:convert';

SystemInfoModel systemInfoModelFromJson(String str) =>
    SystemInfoModel.fromJson(json.decode(str));

String systemInfoModelToJson(SystemInfoModel data) =>
    json.encode(data.toJson());

class SystemInfoModel {
  SystemInfoData data;

  SystemInfoModel({required this.data});

  factory SystemInfoModel.fromJson(Map<String, dynamic> json) =>
      SystemInfoModel(data: SystemInfoData.fromJson(json["results"]));

  Map<String, dynamic> toJson() => <String, Map<String, dynamic>>{
    "results": data.toJson(),
  };
}

class SystemInfoData {
  String privacyPolicy;
  String termOfUs;
  // String aboutUs;

  SystemInfoData({
    required this.privacyPolicy,
    required this.termOfUs,
    // required this.aboutUs,
  });

  factory SystemInfoData.fromJson(Map<String, dynamic> json) => SystemInfoData(
    privacyPolicy: json["privacy_policy"],
    termOfUs: json["terms_of_use"],
    // aboutUs: json["about_us"],
  );

  Map<String, dynamic> toJson() => <String, String>{
    "privacy_policy": privacyPolicy,
    "terms_of_use": termOfUs,
    // "about_us": aboutUs,
  };
}
