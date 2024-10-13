import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:pet_vet_project/src/core/style/color_extension.dart';

class AppTextStyles {
  AppTextStyles(BuildContext context)
      : customColors = Theme.of(context).extension<ColorExtension>(),
        montseratTextStyle = GoogleFonts.montserratAlternates();

  final ColorExtension? customColors;
  final TextStyle montseratTextStyle;

  TextStyle get appBarTitle {
    return montseratTextStyle.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: customColors?.black,
    );
  }

  TextStyle get s12w400black {
    return montseratTextStyle.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: customColors?.black,
    );
  }

  TextStyle get s14w400black {
    return montseratTextStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: customColors?.black,
    );
  }

  TextStyle get s24w400black {
    return montseratTextStyle.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: customColors?.black,
    );
  }

  TextStyle get s16w400black {
    return montseratTextStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: customColors?.black,
    );
  }

  TextStyle get s16w500black {
    return montseratTextStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: customColors?.black,
    );
  }

  TextStyle get s14w400red {
    return montseratTextStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: customColors?.red,
    );
  }

  TextStyle get s12w400grey {
    return montseratTextStyle.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: customColors?.grey,
    );
  }

  TextStyle get s14w400beige {
    return montseratTextStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: customColors?.beige,
    );
  }
}
