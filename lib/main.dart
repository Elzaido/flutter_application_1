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
  // The widget tree is like : main function -> MyApp(The main class) -> MaterialApp -> (Start dealing with pages)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // MaterialApp Class is a class that we use to let the compiler know that we want to make an app.
        // MaterialApp Class have a lot of parameters ... 3 of them listed below.
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        // AnimatedSplashScreen is a class that we get by importing a backage called "animated_splash_screen: ^1.3.0" in the pubspec.yaml file.
        home: AnimatedSplashScreen(
            splashIconSize: 130,
            duration: 4000,
            splash: Image(image: AssetImage('assets/logo.jpg')),
            nextScreen: Login(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white));
  }
}
