import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/app_colors.dart';
import 'package:my_portfolio/styles/app_size.dart';

class AppTheme {
  final String fontFamily;
  AppTheme({required this.fontFamily});
  ThemeData get dark => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryColor,
      background: AppColors.darkBackgroundColor,
      surface: AppColors.gray[850]!,
      outline: AppColors.gray[800]!,
      outlineVariant: AppColors.gray[700]!,
      onSurface: AppColors.gray[300]!,
      onSurfaceVariant: AppColors.gray[400]!,
      tertiary: AppColors.gray[900]!,
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(textStyle: _darkElevatedButtonTextStyle),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(textStyle: _darkOutlinedButtonTextStyle),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.gray[900]!.withOpacity(0.3),
      foregroundColor: AppColors.gray[100],
    ),
  );

  ThemeData get light {
    return _getThemeData(
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        background: AppColors.lightBackgroundColor,
        surface: AppColors.gray[100]!,
        outline: AppColors.gray[200]!,
        outlineVariant: AppColors.gray[300]!,
        onSurface: AppColors.gray[700]!,
        onSurfaceVariant: AppColors.gray[600]!,
        tertiary: AppColors.gray[900]!,
      ),
      scaffoldBackgroundColor: AppColors.lightBackgroundColor,
      elevatedButtonStyle: _lightElevatedButtonTextStyle,
      outlinedButtonStyle: _lightOutlinedButtonTextStyle,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.gray[100]!.withOpacity(0.3),
        foregroundColor: AppColors.gray[900]!.withOpacity(0.3),
      ),
    );
  }

  ThemeData _getThemeData({
    required ColorScheme colorScheme,
    required WidgetStateProperty<TextStyle> elevatedButtonStyle,
    required WidgetStateProperty<TextStyle> outlinedButtonStyle,
    required Color scaffoldBackgroundColor,
    required AppBarTheme appBarTheme,
  }) {
    return ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      appBarTheme: appBarTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size.fromHeight(40)),
          backgroundColor: _primaryButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: Insets.xl, vertical: 10),
          ),
          textStyle: elevatedButtonStyle,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size.fromHeight(40)),
          side: _outlinedButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: Insets.xl, vertical: 10),
          ),
          textStyle: outlinedButtonStyle,
        ),
      ),
    );
  }

  final _primaryButtonStates = WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return const Color(0xff561895).withOpacity(0.7);
    }
    return AppColors.primaryColor;
  });

  final _outlinedButtonStates = WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return BorderSide(color: Color(0xff561895).withOpacity(0.7));
    }
    return BorderSide(color: AppColors.primaryColor);
  });

  WidgetStatePropertyAll<TextStyle> get _darkElevatedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.gray[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );

  WidgetStatePropertyAll<TextStyle> get _darkOutlinedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.gray[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );

  WidgetStatePropertyAll<TextStyle> get _lightElevatedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.gray[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );

  WidgetStatePropertyAll<TextStyle> get _lightOutlinedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.gray[800],
          fontFamily: fontFamily,
          // fontWeight: FontWeight.w500,
        ),
      );
}
