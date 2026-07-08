// import 'package:tallebplus_app/core/common/models/pagination_model.dart';
// import 'package:tallebplus_app/features/orders/data/models/orders_model.dart';

// class FavouritesModel {
//   final PaginationData pagination;
//   final List<FavouriteResult> results;

//   FavouritesModel({required this.pagination, required this.results});

//   factory FavouritesModel.fromJson(Map<String, dynamic> json) =>
//       FavouritesModel(
//         pagination: PaginationData.fromJson(json["pagination"]),
//         results: List<FavouriteResult>.from(
//           json["results"]!.map((dynamic x) => FavouriteResult.fromJson(x)),
//         ),
//       );
// }

// class FavouriteResult {
//   final String? id;
//   final OrderResult? order;

//   FavouriteResult({this.id, this.order});

//   factory FavouriteResult.fromJson(Map<String, dynamic> json) =>
//       FavouriteResult(
//         id: json["id"],
//         order:
//             json["order"] == null ? null : OrderResult.fromJson(json["order"]),
//       );
// }
