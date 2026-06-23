// import 'package:flutter/material.dart';
//
// class AppColors{
//   static const primaryColor = Color(0xff561895);
//   static const darkBackgroundColor = Color(0xff110D12);
//   static const lightBackgroundColor = Color(0xffFBFBFB);
//   static const gray = MaterialColor(100, {
//     100 : Color(0xffFBFBFB),
//     200 : Color(0xffE2E2E2),
//     300 : Color(0xffC9C9C9),
//     400: Color(0xffB0B0B0),
//     500 : Color(0xff979797),
//     600 : Color(0xff7E7E7E),
//     700 : Color(0xff646464),
//     800 : Color(0xff333333),
//     850: Color(0xff131313),
//     900 : Color(0xff110D12),
//   });
// }

import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const primaryColor = Color(0xFF7A4FA3); // Inspired by flowers
  static const secondaryColor = Color(0xFFC13A4A); // Ornament red

  // Backgrounds
  static const darkBackgroundColor = Color(0xFF121212);
  static const lightBackgroundColor = Color(0xFFF8F6F4);

  // Surface Colors
  static const surfaceDark = Color(0xFF1C1C1E);
  static const surfaceLight = Color(0xFFFFFFFF);

  // Accent Colors
  static const lavender = Color(0xFFA47BC7);
  static const forestGreen = Color(0xFF3A4D3F);
  static const warmGold = Color(0xFFD9B26F);
  static const silver = Color(0xFFC7C7C7);

  // Text Colors
  static const textPrimaryDark = Color(0xFFFFFFFF);
  static const textSecondaryDark = Color(0xFFBDBDBD);

  static const textPrimaryLight = Color(0xFF131313);
  static const textSecondaryLight = Color(0xFF646464);

  // Grayscale
  static const gray = MaterialColor(
    0xFF7E7E7E,
    {
      50: Color(0xFFF8F8F8),
      100: Color(0xFFEDEDED),
      200: Color(0xFFDADADA),
      300: Color(0xFFC5C5C5),
      400: Color(0xFFAEAEAE),
      500: Color(0xFF979797),
      600: Color(0xFF7E7E7E),
      700: Color(0xFF646464),
      800: Color(0xFF333333),
      850: Color(0xff131313),
      900: Color(0xFF131313),
    },
  );
}