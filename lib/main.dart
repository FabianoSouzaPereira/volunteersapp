import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volunteersapp/core/router/router_config.dart';
import 'package:volunteersapp/core/services/local_database_service.dart';
import 'package:volunteersapp/core/utils/apiconfig.dart';
import 'package:volunteersapp/l10n/l10n.dart';
import 'package:volunteersapp/locator.dart';
import 'package:volunteersapp/modules/auth/presentation/cubits/auth_cubit.dart';
import 'package:volunteersapp/modules/home/presentation/cubits/home_cubit.dart';
import 'package:volunteersapp/modules/home/presentation/widgets/card_cubit.dart';
import 'package:volunteersapp/modules/settings/presentation/cubits/settings_cubit.dart';
import 'package:kafkabr/kafka.dart';
import 'package:volunteersapp/modules/work/presentation/cubits/work_cubit.dart';
import 'package:volunteersapp/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var host = ContactPoint('127.0.0.1', 9092);
  var session = KafkaSession([host]);
  await setupLocator();
  await SharedPreferences.getInstance();
  await DatabaseService.initDatabase();

  ApiConfig apiConfig = await ApiConfig.load();
  runApp(MyApp(apiConfig: apiConfig));
}

class MyApp extends StatelessWidget {
  final ApiConfig apiConfig;
  const MyApp({super.key, required this.apiConfig});

  @override
  Widget build(BuildContext context) {
    ThemeData lightTheme = AppTheme.lightTheme;
    ThemeData darkTheme = AppTheme.darkTheme;
    return MultiProvider(
      providers: [
        Provider<AuthCubit>(
          create: (_) => getIt.get<AuthCubit>(),
        ),
        Provider<HomeCubit>(
          create: (_) => getIt.get<HomeCubit>(),
        ),
        Provider<CardCubit>(
          create: (_) => getIt.get<CardCubit>(),
        ),
        Provider<SettingsCubit>(
          create: (_) => getIt.get<SettingsCubit>(),
        ),
        Provider<WorkCubit>(
          create: (_) => getIt.get<WorkCubit>(),
        ),
      ],
      child: MaterialApp.router(
        key: Key('MaterialAppRouter'),
        title: 'Volunteers',
        themeMode: AppTheme.currentThemeMode == AppThemeMode.light ? ThemeMode.light : ThemeMode.dark,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        darkTheme: darkTheme,
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: L10n.all,
      ),
    );
  }
}
