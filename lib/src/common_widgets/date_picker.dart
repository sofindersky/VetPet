import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/style/color_extension.dart';

Future<DateTime?> selectDate(BuildContext context) async {
  final theme = Theme.of(context);
  final colorScheme = theme.colorScheme;
  final colorExtension = theme.extension<ColorExtension>()!;

  return showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime(2101),
    builder: (context, child) {
      return Theme(
        data: theme.copyWith(
          colorScheme: colorScheme.copyWith(
            primary: colorExtension.babyBlue,
            onPrimary: colorExtension.white,
            surface: colorExtension.beige,
            onSurface: colorExtension.black,
          ),
          dialogBackgroundColor: colorExtension.white,
        ),
        child: child!,
      );
    },
  );
}
