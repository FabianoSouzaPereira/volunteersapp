// ignore_for_file: file_names

import 'package:flutter/foundation.dart';
import 'package:volunteersapp/core/http/dio_http_client.dart'; // Importe sua implementação do DioHttpClient aqui
import 'package:volunteersapp/data/models/authentication/auth_SignIn_With_Password_Model/response/signin_with_password_Model.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_repository_datasource.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';
import 'package:volunteersapp/core/http/constants.dart';

class AuthenticationDataSourceImpl implements AbastractAuthRepositoryDataSource {
  final DioHttpClient dioHttpClient;

  AuthenticationDataSourceImpl({
    required this.dioHttpClient,
  });

  @override
  Future<ResponseData<SignInWithPasswordResponseModel>> signInWithEmailAndPassword(
      String email, String password, bool returnSecureToken) async {
    try {
      final response = await dioHttpClient.post<SignInWithPasswordResponseModel>(
        API_SERVER_AUTH,
        data: {
          'email': email,
          'password': password,
          'returnSecureToken': returnSecureToken,
        },
      );

      return ResponseData<SignInWithPasswordResponseModel>(
        data: response.data,
        success: true,
      );
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao fazer login: $e');
      }
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await dioHttpClient.post(
        API_SERVER_AUTH,
      );
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao fazer logout: $e');
      }
      rethrow;
    }
  }
}
