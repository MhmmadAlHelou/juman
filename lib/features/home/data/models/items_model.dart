// To parse this JSON data, do
//
//     final itemsModel = itemsModelFromJson(jsonString);

import 'dart:convert';

import 'package:ewan/features/home/data/models/sub_service_model.dart';
import 'package:ewan/features/home/presentation/helper/home_helper.dart';

ItemsModel itemsModelFromJson(String str) =>
    ItemsModel.fromJson(json.decode(str));

class ItemsModel {
  final List<ItemResult> results;

  ItemsModel({required this.results});

  factory ItemsModel.fromJson(Map<String, dynamic> json) => ItemsModel(
    results: List<ItemResult>.from(
      json["results"]!.map((dynamic x) => ItemResult.fromJson(x)),
    ),
  );
}

class ItemResult {
  final String id;
  final String? image;
  final String? name;
  final ServiceResult? service;
  final String? externalLink;
  // final AdType? adType;
  // final AdTargetType? targetType;
  final int? clickCount;

  ItemResult({
    required this.id,
    this.image,
    this.name,
    this.service,
    this.externalLink,
    // this.adType,
    // this.targetType,
    this.clickCount,
  });

  factory ItemResult.fromJson(Map<String, dynamic> json) => ItemResult(
    id: json["id"],
    image: json["image"],
    name: json["name"],
    service: json["service"] == null
        ? null
        : ServiceResult.fromJson(json["service"]),
    externalLink: json["external_link"],
    // adType: json["ad_type"] == null ? null : AdType.values[json["ad_type"]],
    // targetType: json["target_type"] == null
    //     ? null
    //     : AdTargetType.values[json["target_type"]],
    clickCount: json["click_count"],
  );
}

class FormData {
  final String id;
  final List<FieldData> fields;

  FormData({required this.id, required this.fields});

  factory FormData.fromJson(Map<String, dynamic> json) => FormData(
    id: json["id"],
    fields: List<FieldData>.from(
      json["fields"]!.map((dynamic x) => FieldData.fromJson(x)),
    ),
  );
}

class FieldData {
  final String? id;
  final String? label;
  final FieldType? fieldType;
  final bool? required;
  final List<OptionData>? options;
  final String? notes;

  FieldData({
    this.id,
    this.label,
    this.fieldType,
    this.required,
    this.options,
    this.notes,
  });

  factory FieldData.fromJson(Map<String, dynamic> json) => FieldData(
    id: json["id"],
    fieldType: FieldType.values[json["field_type"]],
    label: json["label"],
    notes: json["notes"],
    required: json["required"],
    options: json["options"] == null
        ? <OptionData>[]
        : List<OptionData>.from(
            json["options"]!.map((dynamic x) => OptionData.fromJson(x)),
          ),
  );
}

class OptionData {
  final String? id;
  final String? value;

  OptionData({this.id, this.value});

  OptionData copyWith({String? id, String? value}) =>
      OptionData(id: id ?? this.id, value: value ?? this.value);

  factory OptionData.fromJson(Map<String, dynamic> json) =>
      OptionData(id: json["id"], value: json["value"]);
}

enum FieldType {
  none,
  text,
  number,
  date,
  dropDown,
  radio,
  checkbox,
  map,
  file,
  longText,
  link,
  time,
}
