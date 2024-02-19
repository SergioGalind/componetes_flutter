import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constante de color primario
  static const primaryColor = Color.fromARGB(255, 162, 167, 240);
  //Constante de color secundario
  static const backColor = Color.fromARGB(255, 110, 142, 248);
  //Constante de color secundario
  static const secondaryColor = Color.fromARGB(255, 26, 105, 223);

  
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor:backColor,
      appBarTheme: const AppBarTheme(color:primaryColor),
      textTheme:  TextTheme(
        headlineLarge: GoogleFonts.acme(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
          color: primaryColor,
        ),
        // fuente para textos peques 
        bodySmall: GoogleFonts.montserratAlternates(
          fontSize: 19.0,
          fontWeight: FontWeight.w500,
          color: secondaryColor,
        ),
      ));
}
