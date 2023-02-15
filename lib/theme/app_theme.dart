import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color(0xffff7518);
  static const Color secondary = Color(0xFFBA68C8);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario

    // AppBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario

    // AppBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( foregroundColor: primary),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0
      )
    ),


    inputDecorationTheme: const InputDecorationTheme(

      floatingLabelStyle: TextStyle( color:AppTheme.primary),
      
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppTheme.primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),


    ),


  );
  



}