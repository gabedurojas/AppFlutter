import 'package:flutter/material.dart';
import 'package:flutter_navigator/screens/IntroPage.dart';
import 'package:flutter_navigator/screens/home.dart';

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
      routes: {
        '/': (context) => const Splash(),
        '/home': (context) => const Home(),
        // '/ScrennHome': (context) => ScrennHome(),
      },
    );
  }
}
