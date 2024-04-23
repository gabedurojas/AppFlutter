import 'package:flutter/material.dart';
import 'package:flutter_navigator/screens/screen1.dart';
import 'package:flutter_navigator/screens/screen2.dart';
import 'package:flutter_navigator/screens/screen3.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int _currentIndex = 1;

class _HomeState extends State<Home> {
  // int _currentIndex = 1;

  final List<Widget> _pages = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: texto(),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              _mostrarAlertaSale(context);
              //SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            },
          )
        ],
        elevation: 50,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            backgroundColor: Colors.blue,
            //titulo: 'Facturacion',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: 'Login',
            backgroundColor: Colors.red,
            //titulo: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'Configuracion',
            backgroundColor: Colors.black,
            //titulo: 'Configuracion',
          ),
        ],
      ),
    );
  }
}

Widget texto() {
  return Text(
    _currentIndex == 1
        ? 'Login de Usuario' //'Autenticacion $_currentIndex'
        : _currentIndex == 0
            ? 'Inicio' //'Autenticacion $_currentIndex'
            : 'Configuracion', //'Autenticacion $_currentIndex',
    style: const TextStyle(
        color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
  );
}

void _mostrarAlertaSale(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text("Alerta"),
      content: const Text("Desea salir de la Aplicacion"),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(ctx).pop();
          },
          child: Container(
            //color: Colors.green,
            padding: const EdgeInsets.all(14),
            //fontSize: 20.0, fontWeight: FontWeight.bold
            child: const Text("NO"),
          ),
        ),
        TextButton(
          onPressed: () {
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            //Navigator.of(ctx).pop();
          },
          child: Container(
            //color: Colors.red,
            padding: const EdgeInsets.all(14),
            child: const Text("SI"),
          ),
        ),
      ],
    ),
  );
}
