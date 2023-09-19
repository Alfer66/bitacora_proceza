import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration? procezaInputDecoration({
    String? hintText,
    String? labelText,
    IconData? prefixIcon,
  }) {
    const outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
      // borderRadius: BorderRadius.circular(10),
    );

    return InputDecoration(
      isDense: true,       
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        // borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
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

class StyleElevatedButton {
  static ButtonStyle customButtonStyle() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
  static ButtonStyle customButtonStylePrimary() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
  static ButtonStyle customButtonStyleSecondary() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      side: const BorderSide(color: Colors.green, width: 1),
    );
  }
}
