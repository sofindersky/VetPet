import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/style/color_extension.dart';
import 'package:pet_vet_project/src/core/style/theme_extension.dart';

final ThemeData _baseLight = ThemeData.light();
final ThemeData _baseDark = ThemeData.dark();

//Card Shape
final RoundedRectangleBorder _cardShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12.0),
  side: BorderSide(
    color: _CustomColors.darkBeige,
  ),
);

//FAB Shape
final RoundedRectangleBorder _fabShape = RoundedRectangleBorder(
  side: BorderSide(
    color: _CustomColors.black,
    width: 1.0,
  ),
  borderRadius: BorderRadius.circular(12.0),
);

//Dialog Shape
final RoundedRectangleBorder _dialogShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(
    8.0,
  ),
);

BorderSide _checkBoxBorderSide = WidgetStateBorderSide.resolveWith(
  (Set states) => const BorderSide(
    color: Colors.white,
    width: 1.0,
  ),
);

//Light Theme
final lightTheme = _baseLight.copyWith(
  extensions: <ThemeExtension<dynamic>>[
    CustomThemeExtension(
      decorateBoxBackground: _CustomColors.darkBeige,
      cardBackground: _CustomColors.softMintGreen,
    ),
    ColorExtension(
      darkBeige: _CustomColors.darkBeige,
      beige: _CustomColors.beige,
      softPink: _CustomColors.softPink,
      babyBlue: _CustomColors.babyBlue,
      softMintGreen: _CustomColors.softMintGreen,
      lightLavender: _CustomColors.lightLavender,
      black: _CustomColors.black,
      red: _CustomColors.red,
      grey: _CustomColors.grey,
    ),
  ],
  scaffoldBackgroundColor: _CustomColors.beige,
  appBarTheme: _baseLight.appBarTheme.copyWith(
    backgroundColor: _CustomColors.softMintGreen,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(_CustomColors.babyBlue),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    ),
  ),
  dialogBackgroundColor: _CustomColors.lightLavender,
  dialogTheme: _baseLight.dialogTheme.copyWith(shape: _dialogShape),
  floatingActionButtonTheme: _baseLight.floatingActionButtonTheme.copyWith(
    shape: _fabShape,
    backgroundColor: _CustomColors.babyBlue,
    foregroundColor: _CustomColors.black,
  ),
  checkboxTheme: _baseLight.checkboxTheme.copyWith(
    side: _checkBoxBorderSide,
    fillColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) => states.contains(WidgetState.selected)
          ? _CustomColors.beige
          : _CustomColors.darkBeige,
    ),
  ),
  canvasColor: _CustomColors.lightLavender,
  colorScheme: _baseLight.colorScheme.copyWith(
    primary: _CustomColors.beige,
    onPrimary: _CustomColors.black,
    secondary: _CustomColors.babyBlue,
    onSecondary: _CustomColors.black,
    surface: _CustomColors.softPink,
    tertiary: _CustomColors.softPink,
    onTertiary: _CustomColors.black,
  ),
  cardTheme: _baseLight.cardTheme.copyWith(
    color: _CustomColors.lightLavender,
    shape: _cardShape,
  ),
  iconTheme: _baseLight.iconTheme.copyWith(color: _CustomColors.black),
  switchTheme: _baseLight.switchTheme.copyWith(
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return _CustomColors.lightLavender;
      }
      return _CustomColors.softPink;
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return _CustomColors.babyBlue;
      } else {
        return _CustomColors.beige;
      }
    }),
  ),
);

// Dark Theme
final darkTheme = _baseDark.copyWith(
  extensions: <ThemeExtension<dynamic>>[
    CustomThemeExtension(
      decorateBoxBackground: _CustomDarkColors.darkBeige,
      cardBackground: _CustomDarkColors.softMintGreen,
    ),
    ColorExtension(
      darkBeige: _CustomDarkColors.darkBeige,
      beige: _CustomDarkColors.beige,
      softPink: _CustomDarkColors.softPink,
      babyBlue: _CustomDarkColors.babyBlue,
      softMintGreen: _CustomDarkColors.softMintGreen,
      lightLavender: _CustomDarkColors.lightLavender,
      black: _CustomDarkColors.black,
      red: _CustomDarkColors.red,
      grey: _CustomDarkColors.grey,
    ),
  ],
  scaffoldBackgroundColor: _CustomDarkColors.beige,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(_CustomDarkColors.babyBlue),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    ),
  ),
  dialogBackgroundColor: _CustomDarkColors.lightLavender,
  dialogTheme: _baseDark.dialogTheme.copyWith(shape: _dialogShape),
  appBarTheme: _baseDark.appBarTheme.copyWith(
    backgroundColor: _CustomDarkColors.softMintGreen,
  ),
  floatingActionButtonTheme: _baseDark.floatingActionButtonTheme.copyWith(
    shape: _fabShape,
    backgroundColor: _CustomDarkColors.babyBlue,
    foregroundColor: _CustomDarkColors.offWhite,
  ),
  checkboxTheme: _baseDark.checkboxTheme.copyWith(
    side: _checkBoxBorderSide,
    fillColor: WidgetStateProperty.resolveWith<Color?>(
      (Set states) => states.contains(WidgetState.selected)
          ? _CustomDarkColors.beige
          : _CustomDarkColors.darkBeige,
    ),
  ),
  canvasColor: _CustomDarkColors.lightLavender,
  colorScheme: _baseDark.colorScheme.copyWith(
    primary: _CustomDarkColors.beige,
    onPrimary: _CustomDarkColors.black,
    secondary: _CustomDarkColors.babyBlue,
    onSecondary: _CustomDarkColors.black,
    surface: _CustomDarkColors.softPink,
    tertiary: _CustomDarkColors.softPink,
    onTertiary: _CustomDarkColors.black,
  ),
  cardTheme: _baseDark.cardTheme
      .copyWith(color: _CustomDarkColors.lightLavender, shape: _cardShape),
  iconTheme: _baseLight.iconTheme.copyWith(color: _CustomDarkColors.black),
  switchTheme: _baseLight.switchTheme.copyWith(
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return _CustomDarkColors.lightLavender;
      }
      return _CustomDarkColors.softPink;
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return _CustomDarkColors.babyBlue;
      } else {
        return _CustomDarkColors.beige;
      }
    }),
  ),
);

class _CustomColors {
  static const Color darkBeige = Color(0xFFd6ba96);
  static const Color beige = Color(0xFFF5F5DC);
  static const Color softPink = Color(0xFFFFC0CB);
  static const Color babyBlue = Color(0xFF89CFF0);
  static const Color softMintGreen = Color(0xFFB2F7EF);
  static const Color lightLavender = Color(0xFFE6E6FA);
  static const Color black = Color(0xFF2E2A2A);
  static const Color red = Color.fromARGB(255, 235, 31, 113);
  static const Color grey = Color.fromARGB(255, 126, 119, 119);
}

class _CustomDarkColors {
  static const Color darkBeige = Color(0xFF8C7051);
  static const Color beige = Color(0xFFB0A690);
  static const Color softPink = Color.fromARGB(255, 185, 114, 145);
  static const Color babyBlue = Color.fromARGB(255, 66, 145, 236);
  static const Color softMintGreen = Color.fromARGB(255, 68, 241, 223);
  static const Color lightLavender = Color.fromARGB(255, 124, 119, 143);
  static const Color offWhite = Color(0xFFE0E0E0);
  static const Color black = Color.fromARGB(255, 67, 72, 73);
  static const Color grey = Color.fromARGB(255, 81, 75, 75);
  static const Color red = Color.fromARGB(255, 228, 5, 80);
}
