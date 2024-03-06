import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constante de color primario
  static const primaryColor = Color.fromARGB(255, 11, 85, 245);
  //Constante de color secundario
  static const backColor = Color.fromARGB(255, 110, 142, 248);
  //Constante de color secundario
  static const secondaryColor = Color.fromARGB(255, 26, 105, 223);
  //constante del color de los botones
  static const widgetColor = Color.fromARGB(210, 218, 11, 63);
  // Constente de color y widgets dehabilitados
  static const disableWidgetColor = Color.fromARGB(210, 85, 82, 85);

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
      // Colores del tema claro
      scaffoldBackgroundColor: backColor,
      appBarTheme: AppBarTheme(
          color: primaryColor,
          titleTextStyle: GoogleFonts.lato(
            color: backColor,
            fontSize: 28.5,
            fontWeight: FontWeight.bold,
          )),
      iconTheme: const IconThemeData(
        color: primaryColor,
        size: 35.0,
      ),
      // Estilo de los botones

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(widgetColor),
          foregroundColor: MaterialStateProperty.all(primaryColor),
          textStyle:
              MaterialStateProperty.all(GoogleFonts.pacifico(color: backColor)),
          //disabledBackgroundColor: disableWidgetColor,
        ),
      ),

// Estilo de los textos
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.acme(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
          color: primaryColor,
          decoration: TextDecoration.underline,
          decorationColor: secondaryColor,
          decorationStyle: TextDecorationStyle.wavy,
          decorationThickness: 2.0,
        ),

        headlineMedium: GoogleFonts.alexandria(
          fontSize: 25.5,
          fontWeight: FontWeight.w700,
          color: secondaryColor,
        ),
        // fuente para textos peques
        bodySmall: GoogleFonts.montserratAlternates(
            fontSize: 19.0,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
            fontStyle: FontStyle.italic),
      ));
}
