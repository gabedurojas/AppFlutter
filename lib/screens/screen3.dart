import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          // cemtra en el medio de la pantalal
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            imagenmuni(),
            texto(),
          ],
        ),
      ),
    );
  }

  Widget texto() {
    return Text(
      'Estoy en el screen 2 (Configuracion)',
      style: TextStyle(color: Colors.black, fontSize: 20.0),
    );
  }

  Widget imagenmuni() {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Image.asset('assets/Images/imagen1.png'),
      //child: Image.network(
      //    'https://4.bp.blogspot.com/--w1L843hy_s/WWaSDsgj7gI/AAAAAAAAbIc/fhM8nthMSCosOiFpRgNultYXaIW3aaftwCLcBGAs/s1600/23470002.JPG'),
    );
  }
}
