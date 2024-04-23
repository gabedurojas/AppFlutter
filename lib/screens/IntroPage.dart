// ignore: file_names
import 'dart:async';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer() {
    var duration = const Duration(seconds: 5);
    return Timer(duration, ruta);
  }

  ruta() {
    Navigator.of(context).popAndPushNamed('/home');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///logo
            Image.asset('assets/Images/logo3.png'),
            const SizedBox(
              height: 15,
            ),

            ///texto
            const Text(
              'System S.A.',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                //fontweight: Fontweight.bold,
                shadows: [Shadow(blurRadius: 10.0, offset: Offset(5.0, 5.0))],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
