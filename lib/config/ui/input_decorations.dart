import 'package:flutter/material.dart';

//TODO: Agregar cambios de sialagro

class InputDecorations {
  static InputDecoration? procezaInputDecoration({
    String? hintText,
    String? labelText,
    IconData? prefixIcon,
  }) {
    return InputDecoration(
      isDense: true,
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: const  OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      counterText: '',
      hintText: hintText,
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.green[900]),
      prefixIcon: prefixIcon != null
          ? Icon(prefixIcon, color: Colors.deepPurple)
          : null,
    );
  }
}
