//import 'dart:js';

import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Text('Screen1');
    return const MaterialApp(
      home: Screen(),
      debugShowCheckedModeBanner: false,
    );
    //debugShowCheckedModeBanner: false,
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://e1.pxfuel.com/desktop-wallpaper/180/856/desktop-wallpaper-night-mountains-summer-illustration-artist-and-backgrounds-winter-mountain-art.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          texto(),
          campoUsuario(),
          campopass(),
          const SizedBox(
            height: 15,
          ),
          botonEntrar(),
        ],
      ),
    ),
  );
}

Widget texto() {
  return Text(
    'Autenticacion',
    style: const TextStyle(
        color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Usuario',
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campopass() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonEntrar() {
  return FilledButton(
    onPressed: () {},
    child: Text('Ingresar..'),
  );
}
