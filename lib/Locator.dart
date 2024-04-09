// ignore_for_file: file_names

import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:volunteersapp/core/http/dio_http_client.dart';
import 'package:volunteersapp/data/auth/remote_repository/auth_repository_impl.dart';
import 'package:volunteersapp/presentation/auth/auth_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Packeges
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

  // Core
  getIt.registerLazySingleton<Dio>(() => Dio());

  // notifiers

  // Repositories
  getIt.registerFactory<HttpClient>(() => HttpClient());
  getIt.registerLazySingleton<DioHttpClient>(() => DioHttpClient(
        dio: getIt.get(),
        authLocalRepository: getIt.get(),
      ));
  getIt.registerFactory<AuthRepositoryImpl>(() => AuthRepositoryImpl(getIt.get()));

  // Services

  // cubits
  getIt.registerFactory<AuthCubit>(() => AuthCubit(getIt.get()));
}
