class UploadedFileModel {
  const UploadedFileModel({
    required this.id,
    required this.file,
    required this.originalName,
    required this.fileSize,
    required this.contentType,
  });

  final String id;
  final String file;
  final String originalName;
  final int fileSize;
  final String contentType;

  factory UploadedFileModel.fromJson(Map<String, dynamic> json) {
    return UploadedFileModel(
      id: json['id'] as String,
      file: json['file'] as String,
      originalName: json['original_name'] as String? ?? '',
      fileSize: json['file_size'] as int? ?? 0,
      contentType: json['content_type'] as String? ?? '',
    );
  }
}
