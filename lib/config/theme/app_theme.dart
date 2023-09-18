import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [ //TODO: Poner por color de empresa, para que cambie si es proceza, o si es otra, ver si al introducir nueva empresa desde vista se escoja el color de la empresa, y se guarde para mostrar aqui
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark,
      //primaryColor: _colorThemes[selectedColor],
    );
  }
}
