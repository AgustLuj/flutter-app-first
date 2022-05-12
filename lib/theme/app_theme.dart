import 'package:flutter/material.dart';

class AppTheme{

  static const Color  primary = Colors.blueGrey;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme:const AppBarTheme(
      color: primary,
    ),
    dividerTheme: const DividerThemeData(
      endIndent: 10,
      indent: 10,
    )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme:const AppBarTheme(
      color: primary
    ),
    scaffoldBackgroundColor: Colors.black,
    dividerTheme: const DividerThemeData(
      color: Colors.white,
      endIndent: 10,
      indent: 10,
    )
  );
}
