import 'package:ewan/features/auth/data/models/city_model.dart';

class AuthModel {
  final UserData data;

  AuthModel({required this.data});

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      AuthModel(data: UserData.fromJson(json["results"]));
}

class UserData {
  final String id;
  final String? email;
  final bool? emailVerified;
  final String? access;
  final String? refresh;
  final String? fullName;
  final String? phoneNumber;
  final String? firstName;
  final String? lastName;
  final String? languageCode;
  final String? address;
  final DateTime? birthDate;
  final int? gender;
  final String? image;
  final String? resetPasswordCode;
  final CityResult? city;

  UserData({
    required this.id,
    this.email,
    this.city,
    this.emailVerified,
    this.access,
    this.refresh,
    this.fullName,
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.birthDate,
    this.gender,
    this.image,
    this.address,
    this.languageCode,
    this.resetPasswordCode,
  });

  UserData copyWith({
    String? id,
    String? email,
    String? refresh,
    String? access,
    bool? emailVerified,
    String? phoneNumber,
    String? fullName,
    String? address,
    String? companyName,
    String? languageCode,
    String? firstName,
    String? lastName,
    DateTime? birthDate,
    int? gender,
    CityResult? city,
    dynamic image,

    String? resetPasswordCode,
  }) => UserData(
    id: id ?? this.id,
    email: email ?? this.email,
    access: access ?? this.access,
    refresh: refresh ?? this.refresh,
    emailVerified: emailVerified ?? this.emailVerified,
    fullName: fullName ?? this.fullName,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    birthDate: birthDate ?? this.birthDate,
    gender: gender ?? this.gender,
    image: image ?? this.image,
    address: address ?? this.address,
    city: city ?? this.city,
  );

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
    id: json["id"],
    email: json["email"],
    access: json["access"],
    refresh: json["refresh"],
    emailVerified: json["email_verified"],
    fullName: json["full_name"],
    phoneNumber: json["phone_number"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    address: json["address"],
    birthDate: json["birth_date"] == null
        ? null
        : DateTime.parse(json["birth_date"]),
    gender: json["gender"],
    image: json["image"],
    city: json["city"] == null ? null : CityResult.fromJson(json["city"]),
    resetPasswordCode: json["reset_password_code"],
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    "id": id,
    "email": email,
    "access": access,
    "address": address,
    "refresh": refresh,
    "email_verified": emailVerified,
    "phone_number": phoneNumber,
    "full_name": fullName,
    "first_name": firstName,
    "last_name": lastName,
    "birth_date": birthDate?.toIso8601String(),
    "gender": gender,
    "image": image,
    "reset_password_code": resetPasswordCode,
  };
}
