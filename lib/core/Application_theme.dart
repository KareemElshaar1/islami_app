import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static bool isDark = true;
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: Color(0xFFB7935F),
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB7935F),
          primary: const Color(0xFFB7935F),
          onPrimary: const Color(0xFFB7935F),
          onSecondary: Colors.black,
          secondary: Colors.black,
          surface: Colors.white,
          background: const Color(0xFFB7935F),
          onPrimaryContainer: const Color(0xFFB7935F),
          onBackground: Colors.white.withOpacity(0.8)),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 32,
        ),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 28,
        ),
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xFFB7935F),
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        bodySmall: GoogleFonts.cinzelDecorative(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: Color(0xFFFACC1D),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF141A2E),
        primary: const Color(0xFF141A2E),
        surface: Colors.black,
        onPrimary: const Color(0xFFB7935F),
        onSecondary: Colors.white,
        secondary: Color(0xFFFACC1D),
        onBackground: Color(0xFF141A2E).withOpacity(0.8),
        background: Color(0xFFFACC1D),
        onPrimaryContainer: Color(0xFFFACC1D),
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Color(0xFFFACC1D),
          size: 32,
        ),
        selectedItemColor: Color(0xFFFACC1D),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 28,
        ),
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xFF141A2E),
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        bodySmall: GoogleFonts.cinzelDecorative(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ));
}
