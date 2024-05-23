import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/core/router/paths.dart';
import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth/abstract_auth_local_repository.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkTokenAndNavigate();
  }

  void _checkTokenAndNavigate() async {
    final repository = GetIt.instance.get<AbstractAuthLocalRepository>();
    Future<SignInWithPasswordResponseModel?> token = repository.readAuthToken();
    bool tokenIsValid = await _checkTokenValidity(token);

    if (tokenIsValid) {
      sleep(Duration(microseconds: 1000));
      GoRouter.of(context).go(HomePagePath);
    } else {
      sleep(Duration(microseconds: 1000));
      GoRouter.of(context).go(LoginPagePath);
    }
  }

  Future<bool> _checkTokenValidity(Future<SignInWithPasswordResponseModel?> tokenFuture) async {
    SignInWithPasswordResponseModel? token = await tokenFuture;

    return token != null;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
