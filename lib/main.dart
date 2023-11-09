import 'package:flutter/material.dart';
import 'package:news_street/pages/home/category_view.dart';
import 'package:news_street/pages/home/home_view.dart';
import 'package:news_street/pages/splash/splash_view.dart';

import 'core/theme/application_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,

      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        HomeView.routeName: (context) => HomeView(),

      },
    );
  }
}
