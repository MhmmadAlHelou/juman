import 'package:equatable/equatable.dart';

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

class UploadedImageItem extends Equatable {
  const UploadedImageItem({required this.id, required this.url});

  final String id;
  final String url;

  factory UploadedImageItem.fromJson(Map<String, dynamic> json) {
    return UploadedImageItem(
      id: json['id'] as String,
      url: json['image'] as String,
    );
  }

  @override
  List<Object?> get props => <Object?>[id, url];
}

class UploadedDocumentItem extends Equatable {
  const UploadedDocumentItem({required this.id, required this.url});

  final String id;
  final String url;

  factory UploadedDocumentItem.fromJson(Map<String, dynamic> json) {
    return UploadedDocumentItem(
      id: json['id'] as String,
      url: json['file'] as String,
    );
  }

  @override
  List<Object?> get props => <Object?>[id, url];
}
