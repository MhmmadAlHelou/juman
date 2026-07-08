class ContactUsParams {
  final String fullName;
  final String message;
  final String email;

  ContactUsParams({
    required this.fullName,
    required this.message,
    required this.email,
  });

  Map<String, String> toJson() {
    return <String, String>{
      'full_name': fullName,
      'email': email.trim(),
      'message': message.trim(),
    };
  }
}
