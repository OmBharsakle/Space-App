import 'package:flutter/material.dart';
import 'package:space_apps/Screen/home_page.dart';

import '../Utils/colors.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/onbaording.png'),fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 230.0,right: 200),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => UniversHomePage(),));
                  },
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Frame1.png'))
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
