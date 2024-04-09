import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ApiConfig {
  String apiBaseUrl;
  String apiServerName;
  String apiServerAuth;
  String loginUrl;
  String signupUrl;

  ApiConfig({
    required this.apiBaseUrl,
    required this.apiServerName,
    required this.apiServerAuth,
    required this.loginUrl,
    required this.signupUrl,
  });

  factory ApiConfig.fromJson(Map<String, dynamic> json) {
    final endpoints = json['Endpoint'] as Map<String, dynamic>;
    return ApiConfig(
      apiBaseUrl: endpoints['BASE_URL'],
      apiServerName: json['API_SERVER_NAME'],
      apiServerAuth: json['API_SERVER_AUTH'],
      loginUrl: endpoints['POST_SIGN_IN_WITH_PASSWORD'],
      signupUrl: endpoints['POST_SIGN_IN_WITH_PASSWORD'],
    );
  }

  static Future<ApiConfig> load() async {
    String jsonString = await rootBundle.loadString('assets/config.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    return ApiConfig.fromJson(jsonMap);
  }
}
