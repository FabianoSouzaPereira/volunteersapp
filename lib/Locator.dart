import 'dart:io';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:volunteersapp/core/http/dio_http_client.dart';
import 'package:volunteersapp/data/auth/local_repository/auth_local_repository_impl.dart';
import 'package:volunteersapp/data/auth/remote_repository/auth_repository_DataSourceImpl.dart';
import 'package:volunteersapp/data/auth/remote_repository/auth_repository_impl.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_local_repository.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_repository.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_repository_datasource.dart';
import 'package:volunteersapp/domain/usecases/auth_use_case.dart';
import 'package:volunteersapp/presentation/auth/auth_cubit.dart';
import 'package:volunteersapp/presentation/home/home_cubit.dart';
import 'package:volunteersapp/presentation/home/widgets/card_cubit.dart';
import 'package:volunteersapp/presentation/notification/notification_cubit.dart';
import 'package:volunteersapp/presentation/settings/settings_cubit.dart';
import 'package:volunteersapp/presentation/work/work_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Packeges
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

  // Core
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<HttpClient>(() => HttpClient());
  getIt.registerLazySingleton<DioHttpClient>(() => DioHttpClient(
        dio: getIt.get(),
        authLocalRepository: getIt.get<AbstractAuthLocalRepository>(),
      ));

  // notifiers

  // usecases
  getIt.registerLazySingleton<AuthUseCase>(
    () => AuthUseCase(
      repository: AuthRepositoryImpl(getIt.get()),
      localRepository: AuthLocalRepositoryImpl(getIt.get()),
    ),
  );
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
  getIt.registerSingleton<HomeCubit>(HomeCubit());
  getIt.registerSingleton<CardCubit>(CardCubit());
  getIt.registerSingleton<SettingsCubit>(SettingsCubit());
  getIt.registerSingleton<WorkCubit>(WorkCubit());
  getIt.registerSingleton<NotificationCubit>(NotificationCubit());
}
