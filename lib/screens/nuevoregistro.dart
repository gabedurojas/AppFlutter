import 'package:flutter/material.dart';

class ScreenNuevaCuenta extends StatelessWidget {
  const ScreenNuevaCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Text('Screen1');
    return const MaterialApp(
      home: Screen(title: 'Button Enablement'),
      debugShowCheckedModeBanner: false,
    );
    //debugShowCheckedModeBanner: false,
  }
}

class Screen extends StatefulWidget {
  const Screen({required this.title, super.key});
  final String title;
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool _checked = false;
  void _onCheck(val) {
    setState(() {
      _checked = val;
    });
  }

  void _onSubmit() {
    debugPrint("_onSubmit");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autenticacion'),
        elevation: 50,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,

        ///stack es un cojunto de widget
        child: Stack(
          children: [
            loginform(context),
          ],
        ),
      ),
      //body: Center(
      //  child: Column(
      //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //    children: <Widget>[
      //      const Text('Please check below to agree to the terms.',
      //          style: TextStyle(fontStyle: FontStyle.italic)),
      //      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      //        Checkbox(value: _checked, onChanged: (val) => _onCheck(val)),
      //        const Text("I agree")
      //      ]),
      //       MaterialButton(
      //         onPressed: _checked ? () => _onSubmit() : null,
      //         child: const Text('Register'),
      //      )
      //    ],
      //  ),
      //)
    );
  }

  SingleChildScrollView loginform(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(height: 50),
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
              const SizedBox(height: 30),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(children: [
                  TextFormField(
                    autocorrect: false,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple, width: 4)),
                      hintText: 'Ingrese su Nombre',
                      labelText: 'Nombre/s',
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      return (value != null && value.length >= 2)
                          ? null
                          : 'El Nombre debe ser mayor o igual a 2 caracteres';
                    },
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    autocorrect: false,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple, width: 4)),
                      hintText: 'Ingrese su Apellido',
                      labelText: 'Apellido',
                      prefixIcon: Icon(Icons.person_2),
                    ),
                    validator: (value) {
                      return (value != null && value.length >= 6)
                          ? null
                          : 'El Apellido debe ser mayor o igual a 6 caracteres';
                    },
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
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
                    },
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
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
                  ),
                  const SizedBox(height: 30),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(height: 30),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Checkbox(
                        value: _checked, onChanged: (val) => _onCheck(val)),
                    const Text("Acepto las Caondiciones")
                  ]),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    disabledColor: Colors.grey,
                    color: Colors.purple,
                    onPressed: _checked ? () => _onSubmit() : null,
                    child: const Text('ACEPTAR'),
                  )
                  //MaterialButton(
                  //  shape: RoundedRectangleBorder(
                  //      borderRadius: BorderRadius.circular(25)),
                  //  disabledColor: Colors.grey,
                  //  color: Colors.purple,
                  //  child: Container(
                  //    padding: const EdgeInsets.symmetric(
                  //        horizontal: 80, vertical: 15),
                  //    child: const Text(
                  //      'ACEPTAR',
                  //      style: TextStyle(color: Colors.white),
                  //    ),
                  //  ),
                  //  onPressed: () {},
                  //),
                ]),
              )
            ],
          ),
        ),
      ]),
    );
  }
}




/*
class NewRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(title: 'Button Enablement'
          //, key: true,
          //key: null,
          ),
    );
  }
}

class HomeWidget extends StatefulWidget {
  HomeWidget({required this.title
      //,required Key key,
      });
  //: super(key: key);

//HomeWidget({Key key, this.title}) : super(key: key);
//  HomeWidget({required Key key, required this.title, this.key}) : super(key: key);
  final String title;
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool _checked = false;
  void _onCheck(val) {
    setState(() {
      _checked = val;
    });
  }

  void _onSubmit() {
    debugPrint("_onSubmit");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text('Please check below to agree to the terms.',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Checkbox(value: _checked, onChanged: (val) => _onCheck(val)),
                const Text("I agree")
              ]),
              MaterialButton(
                onPressed: _checked ? () => _onSubmit() : null,
                child: const Text('Register'),
              )
            ],
          ),
        ));
  }
}

*/