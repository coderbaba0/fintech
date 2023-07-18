
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';


ThemeData lightTheme = ThemeData(
  primaryColor: Colors.black54,
  primaryColorDark: Colors.green,
  primaryColorLight: Colors.white,
  fontFamily: ('Poppins'),
  primarySwatch: Colors.blue,
  useMaterial3: true,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarIconBrightness: Brightness.dark),

    color: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  // bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedItemColor: Colors.white,selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 16.0,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 14.0,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontSize: 12.0,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  primaryColor: Colors.white,
  primaryColorDark: Colors.white,
  primaryColorLight: Colors.green,
  fontFamily: ('Poppins'),
  useMaterial3: true,
  primarySwatch: Colors.green,
  brightness: Brightness.dark,
  appBarTheme:  AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarIconBrightness: Brightness.light),

    backgroundColor: Colors.black.withOpacity(.5),
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  // bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedItemColor: Colors.white,selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 16.0,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
    ),
    bodySmall: TextStyle(
      color: Colors.white,
      fontSize: 12.0,
    ),
  ),
);

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences ?prefs;
  bool ? _darkTheme;

  bool get darkThemes => _darkTheme!; //Getter

  ThemeNotifier() {
    _darkTheme = true;
    loadFromPrefs();
  }

  toggleTheme() {
    _darkTheme = !_darkTheme!;
    saveToPrefs();
    notifyListeners();
  }

  _initPrefs() async {
    if (prefs == null) prefs = await SharedPreferences.getInstance();
  }

  loadFromPrefs() async {
    await _initPrefs();
    _darkTheme = prefs!.getBool(key) ?? true;
    notifyListeners();
  }

  saveToPrefs() async {
    await _initPrefs();
    prefs!.setBool(key, darkThemes);
  }
}