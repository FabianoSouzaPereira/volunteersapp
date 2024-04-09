// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:volunteersapp/presentation/auth/auth_cubit.dart';
import 'package:volunteersapp/presentation/auth/auth_page_state.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});
  final _cubit = GetIt.instance.get<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final bool returnSecureToken = true;

    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthPageState>(
        listener: (context, state) {
          if (state is AuthPageError) {
            // Mostrar mensagem de erro de login
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.errorMessage),
            ));
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
                  const Text(
                    'Login',
                    style: TextStyle(
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
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
