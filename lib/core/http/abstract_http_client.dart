abstract class AbstractHttpClient {
  String apiServerName = "https://firestore.googleapis.com/v1/";
  String apiServerAuth = "https://identitytoolkit.googleapis.com/v1/";

  Future<HttpResponse<T>> post<T>(String path, {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters});

  Future<HttpResponse<T>> put<T>(String path, {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters});

  Future<HttpResponse<T>> get<T>(String path, {Map<String, dynamic>? queryParameters});

  Future<HttpResponse<T>> delete<T>(String path, {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters});
}

class HttpResponse<T> {
  HttpResponse({
    this.data,
    this.statusCode,
    this.statusMessage,
  });

  T? data;
  int? statusCode;
  String? statusMessage;
}
