import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/data/models/uploaded_file_model.dart';

abstract class FileUploadService {
  Future<UploadedFileModel> uploadImage(File file, {String? propertyId});
  Future<UploadedFileModel> uploadDocument(File file, {String? propertyId});
}

class FileUploadServiceImpl implements FileUploadService {
  FileUploadServiceImpl(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<UploadedFileModel> uploadImage(File file, {String? propertyId}) {
    return _upload(file, EndPoint.uploadImage, propertyId);
  }

  @override
  Future<UploadedFileModel> uploadDocument(File file, {String? propertyId}) {
    return _upload(file, EndPoint.uploadDocument, propertyId);
  }

  Future<UploadedFileModel> _upload(
    File file,
    String endpoint,
    String? propertyId,
  ) async {
    final String fileName = file.path.split('/').last;
    final FormData formData = FormData.fromMap(<String, dynamic>{
      'file': await MultipartFile.fromFile(file.path, filename: fileName),
      if (propertyId != null) 'property_id': propertyId,
    });

    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      endpoint,
      formData: formData,
    );

    // print('UPLOAD RESPONSE RAW: ${response.data}');

    final Map<String, dynamic> body = response.data as Map<String, dynamic>;
    final Map<String, dynamic> data = body['data'] as Map<String, dynamic>;
    // print(file);
    return UploadedFileModel.fromJson(data);
  }
}
