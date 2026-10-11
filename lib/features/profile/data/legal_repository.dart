import 'package:ewan/core/core.dart';
import 'package:ewan/features/profile/data/models/legal_content_model.dart';

abstract class LegalRepository {
  Future<LegalContentModel> getPrivacyPolicy();

  Future<LegalContentModel> getTermsOfUse();
}

class LegalRepositoryImpl implements LegalRepository {
  LegalRepositoryImpl(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<LegalContentModel> getPrivacyPolicy() async {
    try {
      final Response<dynamic> response = await _dioClient.sendRequest(
        RequestType.get,
        EndPoint.privacyPolicy,
      );

      final Map<String, dynamic> body = response.data as Map<String, dynamic>;

      final Map<String, dynamic> data = body['data'] as Map<String, dynamic>;

      return LegalContentModel.fromJson(data);
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<LegalContentModel> getTermsOfUse() async {
    try {
      final Response<dynamic> response = await _dioClient.sendRequest(
        RequestType.get,
        EndPoint.termsOfUse,
      );

      final Map<String, dynamic> body = response.data as Map<String, dynamic>;

      final Map<String, dynamic> data = body['data'] as Map<String, dynamic>;

      return LegalContentModel.fromJson(data);
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }
}
