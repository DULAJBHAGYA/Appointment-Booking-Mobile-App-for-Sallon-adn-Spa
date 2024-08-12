import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';

class AppTheme {
  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Palette.backgroundColor,
    textTheme: GoogleFonts.urbanistTextTheme(
      ThemeData.light().textTheme,
    ).copyWith(
      displayLarge: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontSize: 30,
          color: Palette.blackColor,
          fontWeight: FontWeight.w900,
        ),
      ),
      headlineLarge: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontSize: 24,
          color: Palette.blackColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyLarge: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontSize: 24,
          color: Palette.whiteColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      headlineMedium: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontSize: 20,
          color: Palette.blackColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      headlineSmall: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontSize: 16,
          color: Palette.blackColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      bodyMedium: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontSize: 16,
          color: Palette.brownColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      titleMedium: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontSize: 14,
          color: Palette.greyColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodySmall: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontSize: 14,
          color: Palette.blackColor,
          fontWeight: FontWeight.w900,
        ),
      ),
      titleSmall: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontSize: 16,
          color: Palette.whiteColor,
          fontWeight: FontWeight.w400,
        ),
      ),
      titleLarge: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontSize: 18,
          color: Palette.whiteColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
