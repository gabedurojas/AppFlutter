import 'package:flutter/material.dart';
import 'package:flutter_navigator/screens/login_screen.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //llamamos al screen del login con una ruta
      routes: {
        'login': (contetx) => const LoginScreen(),
      },
      // pongo por defecto el scree
      initialRoute: 'login',
    );
  }
}
