import 'package:flutter/material.dart';
import 'Screen/home_page.dart';
import 'Screen/slaphScreen.dart';
import 'Utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.lightTheme(context),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const SplashScreen(),
    );
  }
}

