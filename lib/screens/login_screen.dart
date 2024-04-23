import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_navigator/screens/nuevacuenta.dart';
import 'package:flutter_navigator/screens/nuevoregistro.dart';
import 'package:flutter_navigator/screens/screen0.dart';
//import 'package:flutter_navigator/screens/nuevoregistro.dart';
//import 'package:flutter_navigator/screens/screen0.dart';
// ignore: unused_import
import 'package:flutter_navigator/widgets/input_decoration.dart';
//import 'package:flutter_navigator/screens/screen3.dart';
//import 'package:flutter_navigator/screens/screen0.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //TextEditingController _textoEmail = TextEditingController(text: "");
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
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
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,

        ///stack es un cojunto de widget
        child: Stack(
          children: [
            cajapurpura(size),
            iconopersonal(),
            loginform(context),
          ],
        ),
      ),
    );
  }

  //String name;

  SingleChildScrollView loginform(BuildContext context) {
    //TextEditingController _textoEmail = TextEditingController(text: "");
    //final TextEditingController _textopass = TextEditingController();

    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(height: 250),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          //height: 350,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 15,
                  offset: Offset(0, 5),
                )
              ]),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 30),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    //controller: _textoEmail,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple, width: 4)),
                      hintText: 'ejemplo@xxxx.com',
                      labelText: 'Correo Electronico',
                      prefixIcon: Icon(Icons.alternate_email_outlined),
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@') ||
                          !value.contains('.') ||
                          !value.contains('.com')) {
                        return 'Email Invalido';
                      }
                      return null;
                      //String pattern =
                      //    r'^(([^<>()[]\.,;:\s@"]+(.[^<>()[]\.,;:\s@"]+)*)|(".+"))@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}])|(([a-zA-Z-0-9]+.)+[a-zA-Z]{2,}))$';
                      //RegExp regExp = RegExp(pattern);
                      ////return regExp.hasMatch(value ?? '')
                      //    ? null
                      //    : 'Error Mail Invalido';
                    },
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    //controller: _textopass,
                    obscureText: true,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple, width: 4)),
                      hintText: '*******',
                      labelText: 'Contraseña',
                      prefixIcon: Icon(Icons.lock_clock_outlined),
                    ),
                    validator: (value) {
                      return (value != null && value.length >= 6)
                          ? null
                          : 'La Contraseña debe ser mayor o igual a 6 caracteres';
                    },
                    //onChanged: (text) {
                    //  name = text;
                    //},
                  ),
                  const SizedBox(height: 30),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    disabledColor: Colors.grey,
                    color: Colors.purple,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 15),
                      child: const Text(
                        'I N G R E S A R',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: () {
                      /// con variable
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ScrennHome()));
                      //builder: (context) => ScreenNuevaCuenta()));
                    },
                  ),
                ]),
              )
            ],
          ),
        ),
        const SizedBox(height: 50),
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          color: Colors.black,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            child: const Text(
              'Crear una nueva cuenta',
              style: TextStyle(color: Colors.white),
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ScreenNuevaCuenta(),
            ));
          },
        )
      ]),
    );
  }

  SafeArea iconopersonal() {
    return SafeArea(
      child: Container(
          margin: const EdgeInsets.only(top: 30),
          width: double.infinity,
          child: const Icon(
            Icons.person_pin,
            color: Colors.white,
            size: 200,
          )),
    );
  }

  Container cajapurpura(Size size) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(60, 62, 153, 1),
        Color.fromRGBO(90, 70, 178, 1)
      ])),
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(child: burbuja(), top: 90, left: 30),
          Positioned(child: burbuja(), top: -40, left: -30),
          Positioned(child: burbuja(), top: -50, right: -20),
          Positioned(child: burbuja(), bottom: -50, left: 10),
          Positioned(child: burbuja(), bottom: 120, right: -20),
        ],
      ),
    );
  }

  Container burbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }

  void _mostrarAlertaSale(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Alerta",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        content: const Text("Desea salir de la Aplicacion?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Container(
              //color: Colors.grey,
              padding: const EdgeInsets.all(14),
              child: const Text("NO",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
            ),
          ),
          TextButton(
            onPressed: () {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              //Navigator.of(ctx).pop();
            },
            child: Container(
              //color: Colors.grey,
              padding: const EdgeInsets.all(14),
              child: const Text("SI",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
