import 'package:flutter/material.dart';
import 'package:flutter_navigator/screens/screen1.dart';
import 'package:flutter_navigator/screens/screen2.dart';
import 'package:flutter_navigator/screens/screen3.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class ScrennHome extends StatefulWidget {
  //final String textopass;
  //const ScrennHome({super.key, required this.textopass});
  const ScrennHome({super.key});
  @override
  State<ScrennHome> createState() => _ScrennHomeState();
}

int _currentIndex = 1;

class _ScrennHomeState extends State<ScrennHome> {
  //String value1;
  //_ScrennHomeState(this.value1);
  // int _currentIndex = 1;
  //  TextEditingController _texto = TextEditingController(text: "");

  final List<Widget> _pages = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
  ];

  //final String elmail;

  @override
  Widget build(BuildContext context) {
    // TextEditingController _textopass = TextEditingController(text: textopass);
    /// con ruteo
    //final String? names = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //title: child(),
        //title: const Column(
        //  children: [
        //     Text(
        //      'Hola',
        //      //'Hola ${nameControler}',
        //      style: TextStyle(fontSize: 16.0),
        //    ),
        //    Padding(padding: EdgeInsets.all(0.0), child: Text('gergerger')),
        //  ],
        //),
        title: texto(),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.exit_to_app,
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

  // ScrennHome get controler => widget;
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
