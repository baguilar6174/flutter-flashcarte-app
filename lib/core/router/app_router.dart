import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flashcarte_app/features/profile/presentation/pages/pages.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_flashcarte_app/features/cards/presentation/pages/pages.dart';
import 'package:flutter_flashcarte_app/core/router/home_page.dart';
import 'package:flutter_flashcarte_app/core/router/splash_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

enum Routes {
  root("/"),
  splashScreen("/splashscreen"),
  home("/home"),
  add("/add"),
  profile("/profile");

  const Routes(this.path);
  final String path;
}

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: Routes.splashScreen.path,
      name: Routes.splashScreen.name,
      builder: (_, __) => const SplashPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => HomePage(navigationShell: shell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.add.path,
              name: Routes.add.name,
              builder: (_, __) => const AddPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.profile.path,
              name: Routes.profile.name,
              builder: (_, __) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ],
  initialLocation: Routes.splashScreen.path,
  routerNeglect: true,
  debugLogDiagnostics: kDebugMode,
);
