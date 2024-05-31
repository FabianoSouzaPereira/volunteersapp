import 'package:flutter/material.dart';

enum AppThemeMode { light, dark }

class AppTheme {
  static AppThemeMode currentThemeMode = AppThemeMode.dark;

  static ThemeData get currentTheme {
    return currentThemeMode == AppThemeMode.light ? lightTheme : darkTheme;
  }

  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ThemeData.light().textTheme.copyWith(
          titleLarge: TextStyle(color: Colors.black, fontFamily: 'OpenSans'),
          titleMedium: TextStyle(color: Colors.black, fontFamily: 'OpenSans'),
          titleSmall: TextStyle(color: Colors.black, fontFamily: 'OpenSans'),
        ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green).copyWith(
          primary: Colors.transparent,
          background: Colors.transparent,
        ),
    inputDecorationTheme: InputDecorationTheme(
        // labelStyle: TextStyle(color: Colors.white),
        // filled: true,
        // fillColor: Colors.grey,
        ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.black, // Define a cor do cursor como branca
      // Outras definições de estilo para o cursor
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ThemeData.dark().textTheme.copyWith(
          displayLarge: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          displayMedium: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          displaySmall: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          headlineLarge: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          headlineMedium: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          headlineSmall: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          titleLarge: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          titleMedium: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          titleSmall: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          bodyLarge: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          bodyMedium: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          bodySmall: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          labelLarge: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          labelMedium: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
          labelSmall: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
        ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green).copyWith(
          primary: Colors.transparent,
          background: Colors.transparent,
        ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.white, fontSize: 16),
      filled: true,
      fillColor: Color.fromARGB(120, 0, 0, 0),
      outlineBorder: BorderSide(
        color: const Color.fromARGB(255, 255, 255, 255),
        width: 4.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: const Color.fromARGB(255, 252, 252, 253),
          width: 4.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.white, // Define a cor do cursor como branca
      // Outras definições de estilo para o cursor
    ),
    buttonTheme: ButtonThemeData(
      // Define o estilo do texto para o botão
      textTheme: ButtonTextTheme.normal,
      buttonColor: Colors.blue,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.blue,
        secondary: Colors.white,
        background: Colors.blue,
      ),
    ),
  );
}
