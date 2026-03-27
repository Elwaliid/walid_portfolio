import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mysite/core/colors.dart';

class AppTheme {
  static ThemeData themeData(BuildContext context) {
    return ThemeColors.darkTheme;
  }
}

class ThemeColors {
  const ThemeColors._();

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.dark(
      primary: primaryColor,
      surface: darkBackgroundColor,
    ),
    scaffoldBackgroundColor: const Color(0xFF00040F),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      labelLarge: TextStyle(color: darkTextColor),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkBackgroundColor,
    ),
  );
  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => const Color(0xFF00040F); // Always dark
  Color get textColor => const Color(0xFFFFF8F2); // Always dark
  Color get secondaryColor => const Color.fromARGB(255, 127, 127, 127);
  Gradient get serviceCard => grayBack; // Always dark
  Gradient get contactCard => contactGradi; // Always dark
}
