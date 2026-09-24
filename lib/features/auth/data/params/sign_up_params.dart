class SignUpParams {
  const SignUpParams({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.phoneNumber,
    // required this.address,
    // required this.gender,
    // required this.cityId,
  });

  final String email;
  final String firstName;
  final String lastName;
  // final String cityId;
  final String password;
  final String phoneNumber;
  // final String address;
  // final int gender;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'email': email.trim(),
    'first_name': firstName.trim(),
    'last_name': lastName.trim(),
    "password": password.trim(),
    "phone_number": phoneNumber.trim(),
    // "address": address.trim(),
    // "gender": gender,
    // "city": cityId,
  };
}
