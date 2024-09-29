import 'package:flutter/material.dart';

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  const CustomThemeExtension({required this.decorateBoxBackground});
  final Color? decorateBoxBackground;

  @override
  CustomThemeExtension copyWith({Color? decorateBoxBackground}) {
    return CustomThemeExtension(
      decorateBoxBackground:
          decorateBoxBackground ?? this.decorateBoxBackground,
    );
  }

  @override
  CustomThemeExtension lerp(
      ThemeExtension<CustomThemeExtension>? other, double t,) {
    if (other is! CustomThemeExtension) {
      return this;
    }
    return CustomThemeExtension(
      decorateBoxBackground:
          Color.lerp(decorateBoxBackground, other.decorateBoxBackground, t),
    );
  }
}
