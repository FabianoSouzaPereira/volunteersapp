import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:volunteersapp/core/http/abstract_http_client.dart';
import 'package:volunteersapp/core/http/dio_http_client.dart';
import 'package:volunteersapp/data/auth/remote_repository/auth_repository_DataSourceImpl.dart';
import 'package:volunteersapp/data/models/authentication/auth_SignIn_With_Password_Model/response/signin_with_password_Model.dart';
import 'package:volunteersapp/core/http/constants.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_repository_datasource.dart';

// Mocking DioHttpClient
class MockDioHttpClient extends Mock implements DioHttpClient {
  late final Dio _dio;

  @override
  Future<HttpResponse<SignInWithPasswordResponseModel>> post<SignInWithPasswordResponseModel>(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters}) async {
    try {
      Response<SignInWithPasswordResponseModel> response =
          await _dio.post<SignInWithPasswordResponseModel>(path, data: data);

      return HttpResponse<SignInWithPasswordResponseModel>(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );
    } catch (e, stackTrace) {
      print("Exceção durante a execução do teste: $e");
      print("StackTrace: $stackTrace");
      rethrow;
    }
  }
}

void main() {
  group('AuthenticationDataSourceImpl', () {
    late AbastractAuthRepositoryDataSource dataSource;
    late MockDioHttpClient mockDioHttpClient;

    setUp(() {
      mockDioHttpClient = MockDioHttpClient();
      dataSource = AuthenticationDataSourceImpl(dioHttpClient: mockDioHttpClient);
      mockDioHttpClient._dio = Dio();
    });

    group('signInWithEmailAndPassword', () {
      test('should return SignInWithPasswordResponseModel on success', () async {
        final email = 'jeovajire2003@gmail.com';
        final password = '123456';
        final returnSecureToken = true;

        // Criando um objeto de resposta simulada
        final responseModel = const SignInWithPasswordResponseModel(
            kind: '',
            localId: '',
            email: '',
            displayName: '',
            idToken: '',
            registered: true,
            profilePicture: '',
            oauthAccessToken: '',
            oauthExpireIn: 0,
            oauthAuthorizationCode: '',
            refreshToken: '',
            expiresIn: '',
            mfaPendingCredential: '',
            mfaInfo: [],
            signInWithPasswordResponseModelNotifications: []);

        // Especificando o comportamento do mockDioHttpClient quando chamado com os parâmetros corretos
        when(mockDioHttpClient.post<SignInWithPasswordResponseModel>(
          API_SERVER_AUTH,
          data: {
            'email': email,
            'password': password,
            'returnSecureToken': returnSecureToken,
          },
        )).thenAnswer((_) async => HttpResponse<SignInWithPasswordResponseModel>(
              data: responseModel,
              statusCode: 200,
            ));

        // Executando o método que está sendo testado
        final result = await dataSource.signInWithEmailAndPassword(email, password, returnSecureToken);

        // Verificando se o resultado é o esperado
        expect(result, responseModel);
      });
    });
  });
}
