import 'package:flutter/material.dart';
import 'package:resturant_order_example/themes/DarkMode.dart';
import 'package:resturant_order_example/themes/LightMode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDark => _themeData == darkMode;

  set themeData(ThemeData mode) {
    if (_themeData != mode) {
      _themeData = mode;
      notifyListeners();
    }
  }

  void toggleTheme() {
    if (_themeData != darkMode) {
      _themeData = lightMode;
    } else {
      _themeData = darkMode;
    }
    notifyListeners();
  }
}
