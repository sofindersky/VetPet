import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';

CustomTextStyle get font => Font();
const String _fontFamily = 'Montserrat';
CustomTextStyle get appBarTitle => font.s24.w600.black;

CustomTextStyle get s12w400grey => font.s12.w400.grey;
CustomTextStyle get s12w400black => font.s12.w400.black;

CustomTextStyle get s14w400red => font.s14.w400.red;
CustomTextStyle get s14w400beige => font.s14.w400.beige;
CustomTextStyle get s14w400black => font.s14.w400.black;

CustomTextStyle get s16w400black => font.s16.w400.black;
CustomTextStyle get s16w500black => font.s16.w500.black;
CustomTextStyle get s24w400black => font.s24.w400.black;

class Font extends CustomTextStyle {
  Font()
      : super._(
          fontFamily: _fontFamily,
          fontSize: 14.0,
          color: Colors.blueGrey[900],
        );
}

class CustomTextStyle extends TextStyle {
  const CustomTextStyle._({
    super.inherit,
    super.color,
    super.backgroundColor,
    super.fontSize,
    super.fontWeight,
    super.fontStyle,
    super.letterSpacing,
    super.wordSpacing,
    super.textBaseline,
    super.height,
    super.locale,
    super.foreground,
    super.background,
    super.shadows,
    super.fontFeatures,
    super.decoration,
    super.decorationColor,
    super.leadingDistribution,
    super.decorationStyle,
    super.decorationThickness,
    super.debugLabel,
    super.fontFamily,
    super.overflow,
    super.fontVariations,
    super.fontFamilyFallback,
  });

//sizes
  CustomTextStyle get s10 => copyWith(fontSize: 10.0);
  CustomTextStyle get s12 => copyWith(fontSize: 12.0);
  CustomTextStyle get s14 => copyWith(fontSize: 14.0);
  CustomTextStyle get s15 => copyWith(fontSize: 15.0);
  CustomTextStyle get s16 => copyWith(fontSize: 16.0);
  CustomTextStyle get s20 => copyWith(fontSize: 20.0);
  CustomTextStyle get s24 => copyWith(fontSize: 24.0);
  CustomTextStyle get s32 => copyWith(fontSize: 32.0);

//colors
  CustomTextStyle get darkBeige => copyWith(color: CustomColors.darkBeige);
  CustomTextStyle get beige => copyWith(color: CustomColors.beige);
  CustomTextStyle get white => copyWith(color: Colors.white);
  CustomTextStyle get babyBlue => copyWith(color: CustomColors.babyBlue);
  CustomTextStyle get softMintGreen =>
      copyWith(color: CustomColors.softMintGreen);
  CustomTextStyle get lightLavender =>
      copyWith(color: CustomColors.lightLavender);
  CustomTextStyle get softPink => copyWith(color: CustomColors.softPink);
  CustomTextStyle get black => copyWith(color: Colors.blueGrey[900]);
  CustomTextStyle get grey =>
      copyWith(color: Color.fromARGB(255, 126, 119, 119));
  CustomTextStyle get red => copyWith(color: Color.fromARGB(255, 235, 31, 113));

//font weight
  CustomTextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  CustomTextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  CustomTextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  CustomTextStyle get w700 => copyWith(fontWeight: FontWeight.w700);

  @override
  CustomTextStyle copyWith({
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
    List<FontVariation>? fontVariations,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return CustomTextStyle._(
      inherit: inherit ?? this.inherit,
      color: color ?? this.color,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      fontStyle: fontStyle ?? this.fontStyle,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      textBaseline: textBaseline ?? this.textBaseline,
      height: height ?? this.height,
      locale: locale ?? this.locale,
      foreground: foreground ?? this.foreground,
      background: background ?? this.background,
      shadows: shadows ?? this.shadows,
      fontFeatures: fontFeatures ?? this.fontFeatures,
      decoration: decoration ?? this.decoration,
      decorationColor: decorationColor ?? this.decorationColor,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      decorationThickness: decorationThickness ?? this.decorationThickness,
      debugLabel: debugLabel ?? this.debugLabel,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      overflow: overflow ?? this.overflow,
      fontVariations: fontVariations ?? this.fontVariations,
      leadingDistribution: leadingDistribution ?? this.leadingDistribution,
    );
  }
}
