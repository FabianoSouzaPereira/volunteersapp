import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/core/router/paths.dart';
import 'package:volunteersapp/modules/auth/data/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/modules/auth/domain/repositories/abstract_repositories/abstractions/abstract_auth_local_repository.dart';
import 'package:volunteersapp/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 8), _checkTokenAndNavigate);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _checkTokenAndNavigate() async {
    final repository = GetIt.instance.get<AbstractAuthLocalRepository>();
    Future<SignInWithPasswordResponseModel?> token = repository.readAuthToken();
    bool tokenIsValid = await _checkTokenValidity(token);

    if (tokenIsValid) {
      GoRouter.of(context).go(HomePagePath);
    } else {
      GoRouter.of(context).go(LoginPagePath);
    }
  }

  Future<bool> _checkTokenValidity(Future<SignInWithPasswordResponseModel?> tokenFuture) async {
    SignInWithPasswordResponseModel? token = await tokenFuture;

    return token != null;
  }

  @override
  Widget build(BuildContext context) {
    String _backgroundImage = 'assets/images/background_image_brics.jpg';
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Center(child: Image.asset('assets/images/family_400x400.jpg', opacity: 1.0,)),
          Center(
            child: Text(
              'Volunteers',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontStyle: FontStyle.normal,
                fontFamily: AppTheme.currentTheme.textTheme.displayLarge?.fontFamily,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'A Family in God',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sevillana',
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(_backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
