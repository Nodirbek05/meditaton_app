import 'package:flutter/material.dart';
import 'package:meditation_app/constants/theme_const.dart';
import 'package:meditation_app/provider/meditation_provider.dart';
import 'package:meditation_app/provider/profile_provider.dart';
import 'package:meditation_app/provider/sounds_provider.dart';
import 'package:meditation_app/screens/home/home_page.dart';
import 'package:meditation_app/screens/main_screen/main_screen.dart';
import 'package:provider/provider.dart';

import 'auth/splash_screen/splash_screen.dart';

// email admin@gmail.com
// 12345
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MeditationProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SoundsProvider(),
        ),
      ],
      child: MeditationApp(),
    ),
  );
}

class MeditationApp extends StatelessWidget {
  const MeditationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeConst.mainTheme,
      
      // home: HomePage(),
      home:const SplashScreen(),
      // home: LoginScreen(),
      // home: MainScreen(),
    );
  }
}
