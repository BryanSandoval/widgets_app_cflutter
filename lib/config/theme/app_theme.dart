import 'package:flutter/material.dart';

const _colorThemes = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  })  : assert(selectedColor >= 0, 'Selected color must be greater than zero'),
        assert(selectedColor <= _colorThemes.length,
            'Selected color must be less or equal than ${_colorThemes.length - 1}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
      );
}
