import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lightTheme() => ThemeData(
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),
        color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
    ),
  );
  static ThemeData darkTheme() => ThemeData(
    appBarTheme: AppBarTheme(
    
          
    ),
  );
   static Color creamColor = Colors.white;
}
