import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/data/models/uploaded_file_model.dart';

abstract class FileUploadService {
  Future<UploadedFileModel> uploadFiles(File file);
}

class FileUploadServiceImpl implements FileUploadService {
  FileUploadServiceImpl(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<UploadedFileModel> uploadFiles(File file) async {
    final String fileName = file.path.split('/').last;
    final FormData formData = FormData.fromMap(<String, dynamic>{
      'file': await MultipartFile.fromFile(file.path, filename: fileName),
    });

    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.uploadImage,
      formData: formData,
    );

    final Map<String, dynamic> body = response.data as Map<String, dynamic>;
    return UploadedFileModel.fromJson(body['data'] as Map<String, dynamic>);
  }
}
