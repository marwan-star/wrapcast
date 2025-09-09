import 'package:flutter/material.dart';
import 'package:wrapcast/core/theme/app_theme.dart';
import 'package:wrapcast/features/home/presentation/home_page.dart';
import 'package:wrapcast/features/splash_screens/app_splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.darkTheme,
      home: AppSplashScreen(),

      routes: {'/home': (context) => HomePage()},
    );
  }
}
