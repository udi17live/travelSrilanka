import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;
  bool _isDark;

  ThemeChanger(this._themeData, this._isDark);

  getTheme() => _themeData;
  getIsDark() => _isDark;
  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  setIsDark(bool isDark) {
    _isDark = isDark;
    notifyListeners();
  }
}
