import 'package:flutter/material.dart';
import 'package:fz_hassan/init/constants.dart';

import 'Features/splash/splash_view.dart';
import 'rive_app/home.dart';
import 'rive_app/on_boarding/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBgColor, 
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}