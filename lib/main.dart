import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volunteersapp/Locator.dart';
import 'package:volunteersapp/core/router/router_config.dart';
import 'package:volunteersapp/core/utils/apiconfig.dart';
import 'package:volunteersapp/l10n/l10n.dart';
import 'package:volunteersapp/presentation/auth/auth_cubit.dart';
import 'package:volunteersapp/presentation/home/home_cubit.dart';
import 'package:volunteersapp/presentation/home/widgets/card_cubit.dart';
import 'package:volunteersapp/presentation/settings/settings_cubit.dart';
import 'package:kafkabr/kafka.dart';

void main() async {
  var host = ContactPoint('127.0.0.1', 9092);
  var session = KafkaSession([host]);
  WidgetsFlutterBinding();
  await setupLocator();
  await SharedPreferences.getInstance();
  ApiConfig apiConfig = await ApiConfig.load();

  runApp(MyApp(apiConfig: apiConfig));
}

class MyApp extends StatelessWidget {
  final ApiConfig apiConfig;
  const MyApp({super.key, required this.apiConfig});

  @override
  Widget build(BuildContext context) {
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
      ],
      child: MaterialApp.router(
        title: 'Volunteers',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: L10n.all,
      ),
    );
  }
}
