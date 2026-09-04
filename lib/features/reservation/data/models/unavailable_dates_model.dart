class UnavailableDatesModel {
  final String propertyId;
  final List<DateTime> unavailableDates;

  UnavailableDatesModel({
    required this.propertyId,
    required this.unavailableDates,
  });

  factory UnavailableDatesModel.fromJson(Map<String, dynamic> json) {
    return UnavailableDatesModel(
      propertyId: json['property'] as String,
      unavailableDates: (json['unavailable_dates'] as List<dynamic>)
          .map((d) => DateTime.parse(d as String))
          .toList(),
    );
  }
}
