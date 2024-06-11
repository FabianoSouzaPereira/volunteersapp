import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:volunteersapp/core/http/abstract_http_client.dart';
import 'package:volunteersapp/domain/abstract_repositories/abstractions/abstract_auth/abstract_auth_local_repository.dart';

class DioHttpClient extends AbstractHttpClient {
  final Dio _dio;
  final AbstractAuthLocalRepository _authLocalRepository;

  DioHttpClient({
    required Dio dio,
    required authLocalRepository,
  })  : _dio = dio,
        _authLocalRepository = authLocalRepository {
    _initializeInterceptors();
  }

  void _initializeInterceptors() {
    _dio.options.connectTimeout = const Duration(seconds: 60);
    _dio.options.receiveTimeout = const Duration(seconds: 60);

    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      compact: true,
      maxWidth: 90,
    ));

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        var token = await _authLocalRepository.readAuthToken();
        if (token != null) {
          options.headers["Authorization"] = 'Bearer $token';
          options.headers["x-access-token"] = token;
          options.headers["Accept-Encoding"] = "gzip, deflate, br";
          options.headers["Content-Type"] = "application/json";
          options.headers["Connection"] = "keep-alive";
        }
        return handler.next(options);
      },
    ));
  }

  @override
  Future<HttpResponse<T>> post<T>(String path, {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters}) async {
    try {
      Response<T> response = await _dio.post<T>(path, data: data);

      return HttpResponse<T>(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<HttpResponse<T>> put<T>(String path, {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters}) async {
    try {
      Response<T> response = await _dio.put<T>(path, data: data);

      return HttpResponse<T>(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<HttpResponse<T>> get<T>(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      Response<T> response = await _dio.get<T>(path);

      return HttpResponse<T>(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<HttpResponse<T>> delete<T>(String path, {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters}) async {
    try {
      Response<T> response = await _dio.delete<T>(path);

      return HttpResponse<T>(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );
    } catch (e) {
      rethrow;
    }
  }
}
