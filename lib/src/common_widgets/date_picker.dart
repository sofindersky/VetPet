import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';

Future<DateTime?> selectDate(BuildContext context) async {
  return showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime(2101),
    builder: (context, child) {
      return Theme(
        data: ThemeData.light().copyWith(
          colorScheme: ColorScheme.light(
            primary: CustomColors.babyBlue,
            onPrimary: Colors.white,
            surface: CustomColors.beige,
            onSurface: Colors.black,
          ),
          dialogBackgroundColor: Colors.white,
        ),
        child: child!,
      );
    },
  );
}
