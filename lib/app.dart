import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flashcarte_app/features/cards/presentation/presentation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_flashcarte_app/core/core.dart';

import 'package:flutter_flashcarte_app/features/profile/presentation/cubit/cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider<PreferencesCubit>(
          create: (context) => sl<PreferencesCubit>()..getActiveTheme(),
        ),
        BlocProvider(create: (_) => sl<DecksCubit>()..getAll()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, __) {
          return BlocBuilder<PreferencesCubit, PreferencesState>(
            builder: (context, state) {
              return MaterialApp.router(
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
                locale: Locale(state.lang ?? "en"),
                supportedLocales: I18n.all,
                themeMode: state.activeTheme.mode,
              );
            },
          );
        },
      ),
    );
  }
}
