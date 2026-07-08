class ChangePasswordParams {
  ChangePasswordParams({
    required this.oldPassword,
    required this.password,
  });
  final String oldPassword;
  final String password;

  Map<String, String> toJson() {
    return <String, String>{
      'old_password': oldPassword.trim(),
      'password': password.trim(),
    };
  }
}
