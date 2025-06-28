import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_flashcarte_app/core/router/app_router.dart';
import 'package:flutter_flashcarte_app/core/theme/theme.dart';
import 'package:flutter_flashcarte_app/core/localization/localization.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        routerConfig: appRouter,
        localizationsDelegates: const [
          Strings.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        builder: (BuildContext context, Widget? child) {
          final MediaQueryData data = MediaQuery.of(context);
          return MediaQuery(
            data: data.copyWith(
              textScaler: TextScaler.noScaling,
              alwaysUse24HourFormat: true,
            ),
            child: child!,
          );
        },
        title: 'Flashcard App',
        theme: themeLight(context),
        darkTheme: themeDark(context),
        locale: Locale("en"),
        supportedLocales: I18n.all,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(Strings.of(context)!.appTitle)));
  }
}
