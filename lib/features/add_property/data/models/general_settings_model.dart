import 'package:equatable/equatable.dart';

class GeneralSettingsModel extends Equatable {
  const GeneralSettingsModel({
    required this.minStayDays,
    required this.minGuests,
  });

  final int minStayDays;
  final int minGuests;

  factory GeneralSettingsModel.fromJson(Map<String, dynamic> json) {
    return GeneralSettingsModel(
      minStayDays: json['min_stay_days'] as int? ?? 1,
      minGuests: json['min_guests'] as int? ?? 1,
    );
  }

  @override
  List<Object?> get props => <Object?>[minStayDays, minGuests];
}
