class LegalContentModel {
  const LegalContentModel({required this.content, required this.updatedAt});

  final String content;
  final DateTime updatedAt;

  factory LegalContentModel.fromJson(Map<String, dynamic> json) {
    return LegalContentModel(
      content: json['content'] as String? ?? '',
      updatedAt:
          DateTime.tryParse(json['updated_at'] as String? ?? '') ??
          DateTime.now(),
    );
  }
}
