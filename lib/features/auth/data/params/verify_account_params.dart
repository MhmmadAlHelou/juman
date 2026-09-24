class VerifyAccountParams {
  VerifyAccountParams({this.email, required this.code});

  final String? email;
  final String code;

  Map<String, dynamic> toJson() => <String, String>{
    'identifier': email?.trim() ?? "",
    'otp': code.trim(),
  };
}
