import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ///var = flase
  bool _isDark = false;

  bool get themevalue {
    return _isDark; //dark   light
  }

  //true or false
  //int a = 10;
  //print (a);
  set themevalue(bool value) {
    _isDark = value;
    notifyListeners();
  }
}
