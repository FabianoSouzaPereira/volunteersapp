import 'dart:io';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:volunteersapp/core/http/dio_http_client.dart';
import 'package:volunteersapp/core/services/local_database_service.dart';
import 'package:volunteersapp/modules/auth/data/repositories/local_repository/auth_local_repository_impl.dart';
import 'package:volunteersapp/modules/auth/data/repositories/remote_repository/auth_repository_impl.dart';
import 'package:volunteersapp/modules/auth/domain/repositories/abstract_repositories/abstractions/abstract_auth_local_repository.dart';
import 'package:volunteersapp/modules/auth/domain/repositories/abstract_repositories/abstractions/abstract_auth_repository_datasource.dart';
import 'package:volunteersapp/modules/auth/presentation/cubits/auth_cubit.dart';
import 'package:volunteersapp/modules/home/presentation/cubits/home_cubit.dart';
import 'package:volunteersapp/modules/home/presentation/widgets/card_cubit.dart';
import 'package:volunteersapp/modules/notification/presentation/cubits/notification_cubit.dart';
import 'package:volunteersapp/modules/settings/presentation/cubits/settings_cubit.dart';
import 'package:volunteersapp/modules/work/presentation/cubits/work_cubit.dart';
import 'package:sqflite/sqflite.dart';

import 'modules/auth/data/datasources/auth_repository_DataSourceImpl.dart';
import 'modules/auth/domain/repositories/abstract_repositories/abstractions/abstract_auth_repository.dart';
import 'modules/auth/domain/usecases/auth_use_case.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Packeges
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  // Core
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<HttpClient>(() => HttpClient());
  getIt.registerLazySingleton<DioHttpClient>(() => DioHttpClient(
        dio: getIt.get(),
        authLocalRepository: getIt.get<AbstractAuthLocalRepository>(),
      ));

  // Database
  final database = await DatabaseService.initDatabase();
  getIt.registerLazySingleton<Database>(() => database);

  // notifiers

  // usecases
  getIt.registerLazySingleton<AuthUseCase>(
    () => AuthUseCase(
      repository: AuthRepositoryImpl(getIt.get()),
      localRepository: AuthLocalRepositoryImpl(getIt.get()),
    ),
  );
  // DataSource
  getIt.registerLazySingleton<AbastractAuthRepositoryDataSource>(() => AuthenticationDataSourceImpl(dioHttpClient: getIt.get()));

  // Repositories
  getIt.registerLazySingleton<AbstractAuthRepository>(() => AuthRepositoryImpl(getIt.get()));
  getIt.registerLazySingleton<AbstractAuthLocalRepository>(() => AuthLocalRepositoryImpl(getIt.get<SharedPreferences>()));

  // Services

  // cubits
  getIt.registerSingleton<AuthCubit>(
    AuthCubit(
      AuthUseCase(
        repository: AuthRepositoryImpl(getIt.get()),
        localRepository: AuthLocalRepositoryImpl(getIt.get()),
      ),
    ),
  );
  getIt.registerSingleton<HomeCubit>(HomeCubit(getIt.get()));
  getIt.registerSingleton<CardCubit>(CardCubit());
  getIt.registerSingleton<SettingsCubit>(SettingsCubit());
  getIt.registerSingleton<WorkCubit>(WorkCubit());
  getIt.registerSingleton<NotificationCubit>(NotificationCubit());
}
