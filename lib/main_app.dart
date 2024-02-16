import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor:const Color.fromARGB(233, 141, 166, 230),
        appBarTheme: const AppBarTheme (color: Color.fromARGB(233, 69, 66, 235)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'sans-serif',
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255,  78, 78, 78),
          ),
          bodySmall: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 51, 49, 49),
          ),
        )
      ),
    );
  }
}