import 'package:flutter/material.dart';
import 'package:walpaper/drop_down_.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: AnimatedSplashScreen(
        splash: 'assets/images/aquaman.jpg',
        nextScreen: DropDownButtonExample(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    ),
  );
}
