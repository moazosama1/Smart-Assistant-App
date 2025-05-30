import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:flutter/material.dart';

class ThemeApp {
  ThemeData themeDark = ThemeData(
    useMaterial3: true,
    iconTheme: IconThemeData(color: ColorsApp.whiteColor),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      color: Colors.transparent,
    ),
    scaffoldBackgroundColor: ColorsApp.backgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.backgroundColor,
      primary: ColorsApp.primaryColor,
      surface: ColorsApp.blackColor,
      onSurface: ColorsApp.whiteColor,
    ),
    textTheme: TextTheme(
      // Used for large display text, e.g., splash screens or banners
      displaySmall: TextStyle(
        color: ColorsApp.whiteColor,
        fontSize: 36,
        fontWeight: FontWeight.w400,
      ),
      // Used for prominent headlines, e.g., page titles
      headlineLarge: TextStyle(
        color: ColorsApp.whiteColor,
        fontSize: 32,
        fontWeight: FontWeight.w400,
      ),
      // Used for large titles, e.g., section headers
      titleLarge: TextStyle(
        color: ColorsApp.whiteColor,
        fontSize: 20,
        fontWeight: FontWeight.w400, // w600 semi bold
      ),
      // Used for smaller titles, e.g., subtitles or captions
      titleSmall: TextStyle(
        color: ColorsApp.whiteColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
