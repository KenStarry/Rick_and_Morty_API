import 'package:flutter/material.dart';

import 'colors.dart';

class MyTheme {

  static final lightTheme = ThemeData(
      primaryColor: colors["accentColor"],
      primaryColorDark: colors["cardLight"], // for the cards
      primarySwatch: Colors.deepOrange,
      scaffoldBackgroundColor: colors["onPrimaryLight"],
      iconTheme: IconThemeData(color: colors["iconThemeLight"]),
      fontFamily: "Poppins",
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: "Poppins",
            fontSize: 26),
        titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontFamily: "Poppins",
            fontSize: 20),
        titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontFamily: "Poppins",
            fontSize: 18),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: "Poppins",
            color: Colors.black87),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            fontFamily: "Poppins",
            color: Colors.black87),
        bodySmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            fontFamily: "Poppins",
            color: Colors.black87),
      )
  );

  static final darkTheme = ThemeData(
      primaryColor: colors["accentColor"],
      primaryColorDark: colors["cardDark"], // f
      primarySwatch: Colors.deepOrange,// or the cards
      scaffoldBackgroundColor: colors["onPrimaryDark"],
      iconTheme: IconThemeData(color: colors["accentColor"]),
      fontFamily: "Poppins",
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 26),
        titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 22),
        titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 18),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: "Poppins",
            color: Colors.white),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            fontFamily: "Poppins",
            color: Colors.white70),
        bodySmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            fontFamily: "Poppins",
            color: Colors.white70),
      )
  );
}