import 'dart:async';
import 'package:flutter/material.dart';
import 'package:space_apps/Screen/introScreen.dart';

import '../Utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Schedule navigation to the IntroScreen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const IntroScreen()),
      );
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              firstGradientColor,
              secondGradientColor,
            ],
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/onbaording(3).jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
