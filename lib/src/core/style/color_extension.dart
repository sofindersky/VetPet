import 'package:flutter/material.dart';

class ColorExtension extends ThemeExtension<ColorExtension> {
  ColorExtension({
    required this.darkBeige,
    required this.beige,
    required this.softPink,
    required this.babyBlue,
    required this.softMintGreen,
    required this.lightLavender,
    required this.black,
    required this.red,
    required this.grey,
    this.white = Colors.white,
  });

  final Color? darkBeige;
  final Color? beige;
  final Color? softPink;
  final Color? babyBlue;
  final Color? softMintGreen;
  final Color? lightLavender;
  final Color? black;
  final Color? red;
  final Color? grey;
  final Color? white;

  @override
  ColorExtension copyWith({
    Color? darkBeige,
    Color? beige,
    Color? softPink,
    Color? babyBlue,
    Color? softMintGreen,
    Color? lightLavender,
    Color? black,
    Color? red,
    Color? grey,
    Color? white,
  }) {
    return ColorExtension(
      darkBeige: darkBeige ?? this.darkBeige,
      beige: beige ?? this.beige,
      softPink: softPink ?? this.softPink,
      babyBlue: babyBlue ?? this.babyBlue,
      softMintGreen: softMintGreen ?? this.softMintGreen,
      lightLavender: lightLavender ?? this.lightLavender,
      black: black ?? this.black,
      red: red ?? this.red,
      grey: grey ?? this.grey,
      white: white ?? this.white,
    );
  }

  @override
  ThemeExtension<ColorExtension> lerp(
    covariant ThemeExtension<ColorExtension>? other,
    double t,
  ) {
    if (other is! ColorExtension) return this;

    return ColorExtension(
      darkBeige: Color.lerp(darkBeige, other.darkBeige, t),
      beige: Color.lerp(beige, other.beige, t),
      softPink: Color.lerp(softPink, other.softPink, t),
      babyBlue: Color.lerp(babyBlue, other.babyBlue, t),
      softMintGreen: Color.lerp(softMintGreen, other.softMintGreen, t),
      lightLavender: Color.lerp(lightLavender, other.lightLavender, t),
      black: Color.lerp(black, other.black, t),
      red: Color.lerp(red, other.red, t),
      grey: Color.lerp(grey, other.grey, t),
      white: Color.lerp(white, other.white, t),
    );
  }
}
