import 'package:flutter/material.dart';


class ThemeProvider with ChangeNotifier{

  var _lightTheme = ThemeMode.light;

  ThemeMode get themeMode => _lightTheme;

  void setTheme(themeMode){
    _lightTheme = themeMode;
    notifyListeners();
  }

}