// import '../../home.dart';

// class SubServiceModel {
//   final ServiceResult results;

//   SubServiceModel({required this.results});

//   factory SubServiceModel.fromJson(Map<String, dynamic> json) =>
//       SubServiceModel(results: ServiceResult.fromJson(json["results"]));
// }

// class ServiceResult {
//   final String id;
//   final String name;
//   final dynamic description;
//   final dynamic descriptionToView;
//   final String? image;
//   final String? svgIcon;
//   final FormData? form;
//   final bool? isTop;
//   final List<ServiceResult> children;
//   final ItemResult? popAds;
//   final String? numberOfOrders;

//   ServiceResult({
//     required this.id,
//     required this.name,
//     this.description,
//     this.descriptionToView,
//     this.image,
//     this.svgIcon,
//     this.form,
//     this.isTop,
//     required this.children,
//     this.popAds,
//     this.numberOfOrders,
//   });

//   factory ServiceResult.fromJson(Map<String, dynamic> json) => ServiceResult(
//     id: json["id"],
//     name: json["name"],
//     description: json["description"],
//     descriptionToView: json["description_to_view"],
//     image: json["image"],
//     svgIcon: json["svg_icon"],
//     form: json["form"] == null ? null : FormData.fromJson(json['form']),
//     isTop: json["is_top"],
//     children: List<ServiceResult>.from(
//       json["children"]!.map((dynamic x) => ServiceResult.fromJson(x)),
//     ),
//     popAds: json["pop_ads"] == null
//         ? null
//         : ItemResult.fromJson(json["pop_ads"]),
//     numberOfOrders: json["number_of_orders"],
//   );
// }
