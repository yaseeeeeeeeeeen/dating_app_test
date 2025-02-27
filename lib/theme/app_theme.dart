import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: const Color.fromARGB(255, 233, 233, 233),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: TextStyle(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(fontFamily: "CantataOne", color: Colors.black),
        bodyLarge: TextStyle(fontFamily: "CantataOne", color: Colors.black),
        displayLarge: TextStyle(
          fontFamily: "CantataOne",
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
          fontFamily: "CantataOne",
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          fontFamily: "CantataOne",
          color: Colors.white,
          fontSize: 10,
        ),
        headlineMedium: TextStyle(
          fontFamily: "CantataOne",
          color: Colors.black,
        ),
        headlineSmall: TextStyle(fontFamily: "CantataOne", color: Colors.black),
        titleLarge: TextStyle(fontFamily: "CantataOne", color: Colors.black),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.black,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
    );
  }
}
