import 'package:flutter/material.dart';

const primaryColor = Colors.deepPurple;
const secodaryColor = Colors.purple;

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light, // Modo claro
      primary: Color.fromARGB(255, 6, 6, 202), // Azul da imagem (cor principal)
      onPrimary: Colors.white, // Texto ou ícones sobre a cor principal
      secondary: Color.fromARGB(
          255, 23, 5, 156), // Azul claro para elementos secundários
      onSecondary: Colors.white, // Texto ou ícones sobre a cor secundária
      error: Color(0xFFB00020), // Cor para erros
      onError: Colors.white, // Texto ou ícones sobre a cor de erro
      surface: const Color.fromARGB(
          240, 255, 255, 255), // Superfícies como cards ou menus
      onSurface: Colors.black, // Texto ou ícones sobre superfícies
      // Cor de fundo geral
      // Texto ou ícones sobre o fundo
    ),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.black),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            ),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            backgroundColor: WidgetStateProperty.all(secodaryColor))),
    textTheme: TextTheme(
      titleSmall: TextStyle(color: Colors.black87, fontSize: 16),
      titleMedium: TextStyle(color: Colors.black87, fontSize: 20),
      titleLarge: TextStyle(color: Colors.black87, fontSize: 24),
    ));

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF0000FF), // Azul da imagem
      onPrimary: Colors.black,
      secondary: Color(0xFF1E90FF), // Azul claro
      onSecondary: Colors.black,
      error: Color(0xFFCF6679),
      onError: Colors.black,
      surface: Color.fromARGB(255, 20, 20, 20), // Cor de fundo para elementos
      onSurface: const Color.fromARGB(255, 41, 41, 41),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFBB86FC),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            ),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            backgroundColor: WidgetStateProperty.all(primaryColor))),
    textTheme: TextTheme(
      titleSmall: TextStyle(color: Colors.white70, fontSize: 16),
      titleMedium: TextStyle(
          color: const Color.fromARGB(239, 255, 255, 255), fontSize: 20),
      titleLarge: TextStyle(
          color: const Color.fromARGB(229, 255, 255, 255), fontSize: 24),
    ));
