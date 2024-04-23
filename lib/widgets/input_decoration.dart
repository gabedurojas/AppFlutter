import 'package:flutter/material.dart';

//class InputDecorations
class ClaseInputDecoration {
  static InputDecoration inputDecoration(
      {required String hintText,
      required String labelText,
      required Icon icono,
      required String? Function(dynamic value) validator}) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple)),
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2)),
      hintText: hintText,
      labelText: labelText,
      prefixIcon: icono,
    );
  }
}
