// core/router/splash_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';

import 'package:flutter_flashcarte_app/core/localization/localization.dart';
import 'package:flutter_flashcarte_app/core/router/app_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      context.go(Routes.add.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          Strings.of(context)!.appTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
