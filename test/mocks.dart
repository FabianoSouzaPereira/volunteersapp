import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:volunteersapp/core/http/dio_http_client.dart';
import 'package:volunteersapp/domain/abstract_repositories/abstractions/abstract_auth/abstract_auth_local_repository.dart';
import 'package:volunteersapp/domain/abstract_repositories/abstractions/abstract_auth/abstract_auth_repository.dart';
import 'package:volunteersapp/domain/abstract_repositories/abstractions/abstract_auth/abstract_auth_repository_datasource.dart';
import 'package:volunteersapp/domain/usecases/auth_use_case.dart';
import 'package:volunteersapp/presentation/auth/auth_cubit.dart';
import 'package:volunteersapp/presentation/auth/auth_page_state.dart';
import 'package:volunteersapp/presentation/home/home_cubit.dart';
import 'package:volunteersapp/presentation/home/home_page_state.dart';
import 'package:volunteersapp/presentation/home/widgets/card_cubit.dart';
import 'package:volunteersapp/presentation/notification/notification_cubit.dart';
import 'package:volunteersapp/presentation/settings/settings_cubit.dart';
import 'package:volunteersapp/presentation/work/work_cubit.dart';
import 'package:sqflite/sqflite.dart';

@GenerateMocks([
  SharedPreferences,
  Dio,
  DioHttpClient,
  Database,
  AbstractAuthLocalRepository,
  AbstractAuthRepository,
  AbastractAuthRepositoryDataSource,
  AuthUseCase,
  AuthCubit,
  AuthPageState,
  AuthPageStateInitial,
  AuthPageLoading,
  AuthPageLoaded,
  HomeCubit,
  HomeState,
  HomeInitial,
  HomeStateUpdated,
  CardCubit,
  SettingsCubit,
  WorkCubit,
  NotificationCubit,
])
void main() {}
