// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: AnimatedSplashScreen(
            splashIconSize: 130,
            duration: 4000,
            splash: Image(image: AssetImage('assets/logo.jpg')),
            nextScreen: Login(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white));
  }
}
