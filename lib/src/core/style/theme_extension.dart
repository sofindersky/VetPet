import 'package:flutter/material.dart';

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  const CustomThemeExtension({
    required this.decorateBoxBackground,
    required this.cardBackground,
  });
  final Color? decorateBoxBackground;
  final Color? cardBackground;

  @override
  CustomThemeExtension copyWith({
    Color? decorateBoxBackground,
    Color? cardBackground,
  }) {
    return CustomThemeExtension(
      decorateBoxBackground:
          decorateBoxBackground ?? this.decorateBoxBackground,
      cardBackground: cardBackground ?? this.cardBackground,
    );
  }

  @override
  CustomThemeExtension lerp(
    ThemeExtension<CustomThemeExtension>? other,
    double t,
  ) {
    if (other is! CustomThemeExtension) {
      return this;
    }
    return CustomThemeExtension(
      decorateBoxBackground:
          Color.lerp(decorateBoxBackground, other.decorateBoxBackground, t),
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t),
    );
  }
}
