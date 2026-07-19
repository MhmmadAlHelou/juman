import '../../../../core/common/models/pagination_model.dart';

class CitiesModel {
  final PaginationData pagination;
  final List<CityResult> results;

  CitiesModel({required this.pagination, required this.results});

  factory CitiesModel.fromJson(Map<String, dynamic> json) => CitiesModel(
    pagination: PaginationData.fromJson(json["pagination"]),
    results: List<CityResult>.from(
      json["results"]!.map((dynamic x) => CityResult.fromJson(x)),
    ),
  );
}

class CityResult {
  final String? id;
  final String? name;

  CityResult({this.id, this.name});

  factory CityResult.fromJson(Map<String, dynamic> json) =>
      CityResult(id: json["id"], name: json["name"]);
  Map<String, dynamic> toJson() => <String, dynamic>{"id": id, "name": name};
}
