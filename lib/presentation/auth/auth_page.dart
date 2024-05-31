// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/core/router/routes.dart';
import 'package:volunteersapp/presentation/auth/auth_cubit.dart';
import 'package:volunteersapp/presentation/auth/auth_page_state.dart';
import 'package:volunteersapp/presentation/theme/app_theme.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key, required String title}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final bool returnSecureToken = true;

  final locator = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocConsumer<AuthCubit, AuthPageState>(
        listener: (context, state) {
          if (state is AuthPageError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.errorMessage),
            ));
          }
          if (state is AuthPageLoaded) {
            GoRouter.of(context).pushReplacementNamed(HomePageRoute);
          }
        },
        builder: (context, state) {
          if (state is AuthPageLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: AppTheme.darkTheme.textTheme.bodyLarge!.color,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      final email = emailController.text;
                      final password = passwordController.text;
                      context.read<AuthCubit>().signInWithEmailAndPassword(email, password, returnSecureToken);
                    },
                    child: const Text('Login'),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) return Colors.blue.withOpacity(0.04);
                          if (states.contains(MaterialState.focused) || states.contains(MaterialState.pressed)) return Colors.blue.withOpacity(0.12);
                          return null;
                        },
                      ),
                    ),
                    onPressed: () {
                      final email = emailController.text;
                      final password = passwordController.text;
                      context.read<AuthCubit>().signUp(email, password, returnSecureToken);
                    },
                    child: const Text('SignUp'),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
