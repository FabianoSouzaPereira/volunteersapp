// ignore_for_file: file_names

import 'package:flutter/foundation.dart';
import 'package:volunteersapp/core/http/dio_http_client.dart'; // Importe sua implementação do DioHttpClient aqui
import 'package:volunteersapp/modules/auth/data/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/modules/auth/data/authentication/auth_signup_with_email_password/signup_with_email_and_password.dart';
import 'package:volunteersapp/core/http/response_data.dart';
import 'package:volunteersapp/core/http/constants.dart';
import 'package:volunteersapp/modules/auth/domain/repositories/abstract_repositories/abstractions/abstract_auth_repository_datasource.dart';
import 'package:volunteersapp/core/helpers/http_helper.dart';

class AuthenticationDataSourceImpl implements AbastractAuthRepositoryDataSource {
  final DioHttpClient dioHttpClient;

  AuthenticationDataSourceImpl({
    required this.dioHttpClient,
  });

  @override
  Future<ResponseData<SignUpWithEmailAndPassword>?> signUp(String email, String password, bool returnSecureToken) async {
    try {
      //Api from google doesn't send refreshToken in response body, removed post<SignUpWithEmailAndPassword>
      final response = await dioHttpClient.post(
        "$API_SERVER_AUTH/accounts:signUp?key=$API_KEY",
        data: {
          'email': email,
          'password': password,
          'returnSecureToken': returnSecureToken,
        },
      );

      if (response.statusCode == 201) {
        final signUpData = SignUpWithEmailAndPassword.fromJson(response.data);
        return ResponseData<SignUpWithEmailAndPassword>(
          data: signUpData,
          statusCode: ResultStatusCode.created,
          success: true,
        );
      } else {
        throw Exception('Erro na requisição: ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ResponseData<SignInWithPasswordResponseModel>?> signInWithEmailAndPassword(String email, String password, bool returnSecureToken) async {
    try {
      final response = await dioHttpClient.post(
        "$API_SERVER_AUTH/accounts:signInWithPassword?key=$API_KEY",
        data: {
          'email': email,
          'password': password,
          'returnSecureToken': returnSecureToken,
        },
      );

      if (response.statusCode == 200) {
        final signUpData = SignInWithPasswordResponseModel.fromJson(response.data);
        return ResponseData<SignInWithPasswordResponseModel>(
          data: signUpData,
          statusCode: ResultStatusCode.ok,
          success: true,
        );
      } else {
        throw Exception('Erro na requisição: ${response.statusCode}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao fazer login: $e');
      }
      //rethrow;
      return ResponseData<SignInWithPasswordResponseModel>(
        data: null,
        statusCode: ResultStatusCode.unknow,
        success: true,
      );
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
