import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String currentLocal = "en";
  ThemeMode currentTheme = ThemeMode.light;

  changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  changeLocal(String newLocal) {
    if (currentLocal == newLocal) return;
    currentLocal = newLocal;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String backgroundImage() {
    return isDark() ? "assets/images/bg.png" : "assets/images/background.png";
  }

  String splashScreen() {
    return isDark()
        ? "assets/images/splash_dark.png"
        : "assets/images/splash.png";
  }

  String sebhabody() {
    return isDark()
        ? "assets/images/dark_body.png"
        : "assets/images/body_of_seb7a.png";
  }

  String sebhahead() {
    return isDark()
        ? "assets/images/dark_head_of_seb7a.png"
        : "assets/images/head_of_seb7a.png";
  }
}
