import 'dart:io';
import '../core.dart';

class BackendException extends GeneralException {
  BackendException({DioException? dioException, super.message, super.errors})
    : statusCode = dioException?.response?.statusCode ?? 500 {
    // Extract relevant information from DioException
    final dynamic errorResponse =
        dioException?.response?.data ?? <String, dynamic>{};
    final int status = dioException?.response?.statusCode ?? 500;
    final bool noInternet = _isNoInternetError(dioException);

    if (status == 403 && PrefData.isSignedIn) {
      getIt<AppManagerCubit>().logOut();
    }

    // Populate `message` and `errors`
    _processErrorResponse(errorResponse, noInternet, status);
  }
  final int statusCode;
  String? code;

  // Helper to check if the error indicates a network issue
  bool _isNoInternetError(DioException? dioException) {
    return dioException != null &&
        (dioException.error is SocketException ||
            dioException.type == DioExceptionType.connectionTimeout ||
            dioException.type == DioExceptionType.receiveTimeout ||
            dioException.type == DioExceptionType.sendTimeout ||
            dioException.type == DioExceptionType.connectionError);
  }

  void _processErrorResponse(
    dynamic errorResponse,
    bool noInternet,
    int status,
  ) {
    if (errorResponse is Map<String, dynamic>) {
      // Handle API error object
      final dynamic apiError = errorResponse['error'];

      if (apiError is Map<String, dynamic>) {
        final dynamic apiMessage = apiError['message'];
        final dynamic apiDetails = apiError['details'];
        final dynamic apiDetail = apiError['detail'];

        if (apiDetails is Map<String, dynamic>) {
          errors = apiDetails.map((String key, dynamic value) {
            if (value is List) {
              return MapEntry<String, String>(key, value.join(', '));
            }
            return MapEntry<String, String>(key, value.toString());
          });
        }

        if (apiMessage != null && apiMessage.toString().isNotEmpty) {
          message = apiMessage.toString();
          return;
        }

        if (apiDetail is List) {
          final joined = apiDetail.map((e) => e.toString()).join(' ');
          final parsed = BackendErrorParser.parse(joined);
          code = parsed.code;
          message = parsed.message.isNotEmpty ? parsed.message : joined;
          return;
        }

        if (apiDetail != null && apiDetail.toString().isNotEmpty) {
          final parsed = BackendErrorParser.parse(apiDetail.toString());
          code = parsed.code;
          message = parsed.message;
          return;
        }
      }

      // Handle field errors
      if (errorResponse.containsKey('fields_errors')) {
        final Map<String, dynamic>? fieldErrors =
            errorResponse['fields_errors'] as Map<String, dynamic>?;

        errors = fieldErrors?.map((String key, dynamic value) {
          if (value is List) {
            return MapEntry<String, String>(key, value.join(', '));
          }

          return MapEntry<String, String>(key, value.toString());
        });

        message = errorResponse['message']?.toString() ?? '';
        return;
      }

      // Handle old API response format
      if (errorResponse.containsKey('message')) {
        message = errorResponse['message']?.toString() ?? '';
        return;
      }

      // Handle bare DRF field errors with no wrapper key at all, e.g.
      // {"family_book_document": ["Family book file is required."]}
      if (errorResponse.isNotEmpty &&
          errorResponse.values.every((dynamic v) => v is List)) {
        final Map<String, String> fieldErrors = errorResponse.map(
          (String key, dynamic value) =>
              MapEntry<String, String>(key, (value as List).join(', ')),
        );
        errors = fieldErrors;
        message = fieldErrors.values.first;
        return;
      }
    }

    // Handle unstructured or null response
    if (noInternet) {
      message = kNoInternetConnection;
    } else {
      message = _getDefaultMessageForStatus(status);
    }
  }

  // Provides default messages based on HTTP status codes
  String _getDefaultMessageForStatus(int status) {
    switch (status) {
      case 403:
        return kUnauthorizedClient;
      case 404:
        return kNoDataFound;
      case 401:
        return kInvalidToken;
      case 406:
        return kGenericErrorMessage;
      case 422:
        return kUnacceptableContent;
      default:
        return status == 500 ? kUnknownMessage : kGenericErrorMessage;
    }
  }

  @override
  String toString() {
    return message;
  }
}
