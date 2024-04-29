import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Text('Screen1');
    return const MaterialApp(
      home: Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  // int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          imagenmuni(),
          evento(),
        ],
      ),
    ));
  }

  Widget imagenmuni() {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Image.asset('assets/Images/logo3.png'),
      //child: Image.network(
      //    'https://4.bp.blogspot.com/--w1L843hy_s/WWaSDsgj7gI/AAAAAAAAbIc/fhM8nthMSCosOiFpRgNultYXaIW3aaftwCLcBGAs/s1600/23470002.JPG'),
    );
  }

  int count = 0;
  Widget evento() {
    return Container(
        child: Center(
            child: Column(
      children: <Widget>[
        Text('la cantidad es...$count'),
        FilledButton.tonal(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Icon(Icons.add),
        )
      ],
    )));
  }
}
