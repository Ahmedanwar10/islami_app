import 'package:flutter/material.dart';
import 'package:islame/home/hadeth/hadeth_details.dart';
import 'package:islame/home/home_screen.dart';
import 'package:islame/home/quran/sura_details_screen.dart';
import 'package:islame/myTheme.dart';
import 'package:islame/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      title: 'Islami',
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
