class MessageResponseModel {
  final String message;

  MessageResponseModel({required this.message});

  factory MessageResponseModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    return MessageResponseModel(message: data['message'] as String);
  }
}
