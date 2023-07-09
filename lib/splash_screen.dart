import 'package:flutter/material.dart';
import 'package:islame/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
    return Scaffold(
      body: Center(
        child: Image.asset('assets/image/splash_screen.png'),
      ),
    );
  }
}
