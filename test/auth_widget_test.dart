import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volunteersapp/core/http/abstract_http_client.dart';
import 'package:volunteersapp/core/http/constants.dart';
import 'package:volunteersapp/core/http/dio_http_client.dart';
import 'package:volunteersapp/domain/abstract_repositories/abstractions/abstract_auth/abstract_auth_local_repository.dart';
import 'package:volunteersapp/domain/abstract_repositories/abstractions/abstract_auth/abstract_auth_repository_datasource.dart';
import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/domain/abstract_repositories/response_data.dart';
import 'package:volunteersapp/presentation/helpers/http_helper.dart';

class DebuggableDioHttpClient extends AbstractHttpClient {
  final Dio _dio;
  final AbstractAuthLocalRepository _authLocalRepository;

  DebuggableDioHttpClient({
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
  Future<HttpResponse<T>> delete<T>(String path, {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<HttpResponse<T>> put<T>(String path, {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters}) {
    // TODO: implement put
    throw UnimplementedError();
  }

  // Implementações dos outros métodos (put, delete, etc.) aqui
}

class MockHttpResponse<T> extends Mock implements HttpResponse<T> {}

class MockDioHttpClient extends Mock implements DioHttpClient {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockAbstractAuthLocalRepository extends Mock implements AbstractAuthLocalRepository {}

class MockAuthenticationDataSourceImpl extends Mock implements AbastractAuthRepositoryDataSource {}

@GenerateMocks([
  DioHttpClient,
  HttpResponse<SignInWithPasswordResponseModel>,
  AbastractAuthRepositoryDataSource,
  AbstractAuthLocalRepository,
  SharedPreferences,
])
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  group('AuthenticationDataSourceImpl', () {
    late AbastractAuthRepositoryDataSource mockDataSource;
    late AbstractAuthLocalRepository mockAbstractAuthLocalRepository;
    late DioHttpClient mockDioHttpClient;
    late HttpResponse<SignInWithPasswordResponseModel> mockHttpResponse;
    late SharedPreferences mockSharedPreferences;
    late DebuggableDioHttpClient debuggableDioHttpClient;

    setUp(() {
      mockSharedPreferences = MockSharedPreferences();
      mockAbstractAuthLocalRepository = MockAbstractAuthLocalRepository();
      mockDioHttpClient = MockDioHttpClient();
      mockDataSource = MockAuthenticationDataSourceImpl();
      mockHttpResponse = MockHttpResponse<SignInWithPasswordResponseModel>();
      debuggableDioHttpClient = DebuggableDioHttpClient(dio: Dio(), authLocalRepository: mockAbstractAuthLocalRepository);
    });

    group('signInWithEmailAndPassword', () {
      print('Running signInWithEmailAndPassword test...');

      test('should return SignInWithPasswordResponseModel on success', () async {
        final email = 'jeovajire2003@gmail.com';
        final password = '123456';
        final returnSecureToken = true;

        final responseModel = const SignInWithPasswordResponseModel(
          kind: 'identitytoolkit#VerifyPasswordResponse',
          idToken:
              'eyJhbGciOiJSUzI1NiIsImtpZCI6IjVkNjE3N2E5Mjg2ZDI1Njg0NTI2OWEzMTM2ZDNmNjY0MjZhNGQ2NDIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vdm9sdW50ZWVycy0zYTk0ZCIsImF1ZCI6InZvbHVudGVlcnMtM2E5NGQiLCJhdXRoX3RpbWUiOjE3MTcwMzAyNTQsInVzZXJfaWQiOiIxSlhIc0pHTDFNZ0V5b2Jmc2xtZzZTekVQR0MzIiwic3ViIjoiMUpYSHNKR0wxTWdFeW9iZnNsbWc2U3pFUEdDMyIsImlhdCI6MTcxNzAzMDI1NCwiZXhwIjoxNzE3MDMzODU0LCJlbWFpbCI6Implb3ZhamlyZTIwMDNAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJmaXJlYmFzZSI6eyJpZGVudGl0aWVzIjp7ImVtYWlsIjpbImplb3ZhamlyZTIwMDNAZ21haWwuY29tIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.LUzjZZLlHEP2_PlnKSHTT5dl-o0NCrJ9n5zTaDHBaGDTt55gyxt0qC5X9NzFH7ojhgww6UadysGgpR4LmxsVl7swLI9MuTvClCoCqS7CzVRfP51qrsWc6mOc2qKeKGsQhVgyWSNlMVyJ2KDs2UO0P1EwJhWJLjWZ21Vt3K0jbij8ek09g47WcP1hvUovJU09HWql07bgUtO0DMjHRVjrluCsfIH0O_LKelXBM707Xnjlzh3vU1t1YzF501khQP4Br-tluKKZqJ2xpMAnfJiQM8ftxKKjneTSEW4YWPWZWvOEulrr9B9UVJ-E26YZmA5pRl9CeU_tdsksU102a4KoAg',
          email: 'jeovajire2003@gmail.com',
          displayName: '',
          registered: true,
          refreshToken:
              'AMf-vBy4AhNWgfMI_TJz_L0CeJehGmOI2LwM_ICrwng2gIIpAakjHe_LSwruGBTh14iEP3TI5RBBIBPxGus1SEwlViNicarFQ5EvmQN0U8Zkceior_P0J3CV59ra8P0ThIYcmBMTuSliVh1WBqaptc8t-NgisTp8BrDE6CZurwjT4Z3VYa9HhihPHmAifMUWsDXqL7WD1c_JqpOXqc9GNZ70JeVvEdahvA',
          expiresIn: '3600',
        );

        when(debuggableDioHttpClient.post("$API_SERVER_AUTH/accounts:signUp?key=$API_KEY", data: {'email': email, 'password': password, 'returnSecureToken': returnSecureToken})).thenAnswer((_) async {
          return HttpResponse<SignInWithPasswordResponseModel>(data: responseModel, statusCode: 200);
        });

        print('Calling dataSource.signInWithEmailAndPassword...parameters => $email , $password , $returnSecureToken');

        when(mockDataSource.signInWithEmailAndPassword(email, password, returnSecureToken)).thenAnswer(
          (_) async => ResponseData<SignInWithPasswordResponseModel>(
            data: responseModel,
            statusCode: ResultStatusCode.ok,
            success: true,
          ),
        );

        final result = await mockDataSource.signInWithEmailAndPassword(email, password, returnSecureToken);

        verify(mockDataSource.signInWithEmailAndPassword(email, password, returnSecureToken)).called(1);

        expect(result, responseModel);
      });
    });
  });
}
