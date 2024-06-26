import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/core/router/router_observer.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;
import 'package:volunteersapp/core/router/routes.dart' as routes;
import 'package:volunteersapp/modules/auth/presentation/views/auth_page.dart';
import 'package:volunteersapp/modules/events/Events_page.dart';
import 'package:volunteersapp/modules/home/presentation/views/home_page.dart';
import 'package:volunteersapp/modules/notFound/page_notfound.dart';
import 'package:volunteersapp/modules/notification/presentation/views/notification_page.dart';
import 'package:volunteersapp/modules/settings/presentation/views/settings_page.dart';
import 'package:volunteersapp/modules/splash/splash_page.dart';
import 'package:volunteersapp/modules/user/presentation/views/user_page.dart';
import 'package:volunteersapp/modules/work/presentation/views/work_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
  initialLocation: paths.SplashPagePath,
  navigatorKey: navigatorKey,
  observers: [GoRouterObserverGlobal()],
  redirect: (context, state) {
    final requestedPath = state.fullPath;

    final validRoutes = [
      paths.SplashPagePath,
      paths.LoginPagePath,
      paths.HomePagePath,
      paths.UserPagePath,
      paths.UserDescriptionsPath,
      paths.SettingsPagePath,
      paths.LeadersPagePath,
      paths.TeamsPagePath,
      paths.EventsPagePath,
      paths.NotificationPath,
      paths.WorkPagePath,
    ];

    if (!validRoutes.contains(requestedPath)) {
      return paths.NotFoundPath;
    }

    return null;
  },
  routes: [
    GoRoute(
      path: paths.SplashPagePath,
      name: routes.SplashPageRoute,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: paths.LoginPagePath,
      name: routes.LoginPageRoute,
      builder: (context, state) => AuthPage(key: UniqueKey(), title: 'Login'),
    ),
    GoRoute(
      path: paths.HomePagePath,
      name: routes.HomePageRoute,
      builder: (context, state) => HomePage(key: UniqueKey(), title: 'Home'),
    ),
    GoRoute(
      path: paths.UserPagePath,
      name: routes.UsersPageRoute,
      builder: (context, state) => UserPage(key: UniqueKey(), title: 'User'),
    ),
    GoRoute(
      path: paths.EventsPagePath,
      name: routes.EventsPageRoute,
      builder: (context, state) => EventsPage(key: UniqueKey(), title: 'Events'),
    ),
    GoRoute(
      path: paths.SettingsPagePath,
      name: routes.SettingsPageRoute,
      builder: (context, state) => SettingsPage(key: UniqueKey(), title: 'Settings'),
    ),
    GoRoute(
      path: paths.NotificationPath,
      name: routes.NotificationPageRoute,
      builder: (context, state) => NotificationPage(key: UniqueKey()),
    ),
    GoRoute(
      path: paths.WorkPagePath,
      name: routes.WorkPageRoute,
      builder: (context, state) => WorkPage(key: UniqueKey(), title: 'Works'),
    ),
    GoRoute(
      path: paths.NotFoundPath,
      name: routes.NotFoundPageRoute,
      builder: (context, state) => NotFoundPage(key: UniqueKey()),
    ),
  ],
);
