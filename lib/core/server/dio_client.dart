import 'dart:io';

import '../core.dart';

typedef AppHttpClientErrorHandler = void Function(BackendException e);

enum RequestType { get, post, put, patch, delete }

Logger logger = Logger(
  printer: PrettyPrinter(methodCount: 0, errorMethodCount: 5, lineLength: 75),
);

class DioClient {
  DioClient() {
    _dio = _createDio();

    Future<void>? _refreshing;

    Future<void> _refreshOnce() {
      return _refreshing ??= getRefreshToken().whenComplete(() {
        _refreshing = null;
      });
    }
  }

  late Dio _dio;

  Dio get dio => _dio;

  String get baseUrl => _dio.options.baseUrl;

  set baseUrl(String value) {
    _dio.options.baseUrl = value;
  }

  void resetBaseUrl() {
    baseUrl = EndPoint.baseUrl;
  }

  final List<AppHttpClientErrorHandler> errorHandlers =
      <AppHttpClientErrorHandler>[];

  Dio _createDio({String? baseUrl}) {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: baseUrl ?? EndPoint.baseUrl,
        // headers: <String, dynamic>{'Content-Type': 'application/json'},
        headers: null,
        sendTimeout: ConstantManager.timeOutDuration,
        receiveTimeout: ConstantManager.timeOutDuration,
        connectTimeout: ConstantManager.timeOutDuration,
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          String token = PrefData.token ?? '';

          final bool isLoginRequest = options.path == EndPoint.login;
          final bool isRefreshRequest = options.path == EndPoint.refreshToken;

          if (token.isNotEmpty && !isLoginRequest && !isRefreshRequest) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          // if (token.isNotEmpty) {
          //   // options.headers['Authorization'] = 'JWT $token';
          //   options.headers['Authorization'] = 'Bearer $token';
          // }
          options.headers['Accept-language'] =
              LocalizationConfig.currentLanguage;
          // options.headers['X-Os-Type'] = Platform.isAndroid ? 'android' : 'ios';
          final String requestPath = '${options.baseUrl}${options.path}';
          logger.i('${options.method} request => $requestPath ');
          logger.i('${options.headers}');
          logger.i('queryParameters => ${options.queryParameters}');
          if (options.method != 'GET') {
            logger.i('body => ${options.data}');
          }
          handler.next(options);
        },
        onResponse:
            (Response<dynamic> response, ResponseInterceptorHandler handler) {
              logger.d(
                'StatusCode: ${response.statusCode}, Data: ${response.data}',
              );
              handler.next(response);
            },
        onError: (DioException error, ErrorInterceptorHandler handler) async {
          final String requestPath = error.requestOptions.path;

          logger.e(
            '${error.requestOptions.method} request => '
            '${error.requestOptions.baseUrl}$requestPath',
          );

          logger.e(
            'StatusCode: ${error.response?.statusCode}, '
            'Message: ${error.response?.data}',
          );

          final RequestOptions req = error.requestOptions;
          final bool isLoginRequest = req.path == EndPoint.login;
          final bool isRefreshRequest = req.path == EndPoint.refreshToken;
          final bool alreadyRetried = req.extra['retried'] == true;

          if (error.response?.statusCode == 401 &&
              !isLoginRequest &&
              !isRefreshRequest &&
              !alreadyRetried) {
            req.extra['retried'] = true;

            try {
              await getRefreshToken();
              req.headers['Authorization'] = 'Bearer ${PrefData.token}';
              handler.resolve(await _dio.fetch<dynamic>(req));

              // final RequestOptions requestOptions = error.requestOptions;

              // error.requestOptions.headers['Authorization'] =
              //     'Bearer ${PrefData.token}';

              // final Response<dynamic> response = await dio.fetch<dynamic>(
              //   requestOptions,
              // );

              // handler.resolve(response);
            } catch (_) {
              // Renewal failed: Clear the token and retry as a guest.
              PrefData.token = null;
              req.headers.remove('Authorization');
              try {
                handler.resolve(await _dio.fetch<dynamic>(req));
              } on DioException catch (e) {
                handler.next(e);
              }
            }
            return;
          }

          if (isRefreshRequest) {
            PrefData.fcmTokenSent = false;
            PrefData.fcmToken = null;
            getIt<AppManagerCubit>().logOut();
          }

          for (final AppHttpClientErrorHandler errorHandler in errorHandlers) {
            errorHandler(BackendException(dioException: error));
          }

          handler.next(error);
        },
      ),
    );
    return dio;
  }

  Future<Response<dynamic>> sendRequest(
    RequestType method,
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    FormData? formData,
    CancelToken? cancelToken,
  }) async {
    try {
      // If FormData is requested, it needs the content type inherited from BaseOptions
      //(which is a constant 'application/json'), so Dio calculates the multipart + border itself.
      final Options? options = formData != null
          ? Options(contentType: 'multipart/form-data')
          : null;

      switch (method) {
        case RequestType.get:
          return await _dio.get(
            url,
            queryParameters: queryParameters,
            cancelToken: cancelToken,
          );
        case RequestType.post:
          return await _dio.post(
            url,
            queryParameters: queryParameters,
            data: data ?? formData,
            options: options,
          );
        case RequestType.patch:
          return await _dio.patch(
            url,
            queryParameters: queryParameters,
            data: data ?? formData,
            options: options,
          );
        case RequestType.put:
          return await _dio.put(
            url,
            queryParameters: queryParameters,
            data: data ?? formData,
            options: options,
          );
        case RequestType.delete:
          return await _dio.delete(
            url,
            queryParameters: queryParameters,
            data: data,
          );
      }
    } on DioException catch (e) {
      return _handleError(e);
    }
  }

  Future<void> getRefreshToken() async {
    try {
      Logger().w('Refresh Token');
      final Response<dynamic> response = await _dio.post(
        EndPoint.refreshToken,
        data: <String, String?>{'refresh': PrefData.refreshToken},
      );

      // final Map<String, dynamic> data =
      //     response.data['data'] as Map<String, dynamic>;
      final Map<String, dynamic> data = response.data as Map<String, dynamic>;

      PrefData.token = data['access'] as String?;
      // PrefData.refreshToken = data['refresh'] as String?;
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    } catch (e, stackTrace) {
      logger.e(
        'Unexpected error while refreshing token',
        error: e,
        stackTrace: stackTrace,
      );

      rethrow;
    }
  }

  Response<dynamic> _handleError(DioException dioError) {
    final BackendException backendException = BackendException(
      dioException: dioError,
    );
    for (final AppHttpClientErrorHandler handler in errorHandlers) {
      handler(backendException);
    }
    throw backendException;
  }
}
