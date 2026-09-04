class SignInParams {
  SignInParams({required this.email, required this.password});

  final String email;
  final String password;

  Map<String, dynamic> toJson() => <String, String>{
    'identifier': email.trim(),
    'password': password.trim(),
  };
}
