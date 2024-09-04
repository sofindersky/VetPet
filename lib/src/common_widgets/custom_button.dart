import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.isLoading,
    this.backgroundColor,
    this.foregroundColor,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String text;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(s12w400black),
        backgroundColor: backgroundColor != null
            ? WidgetStateProperty.all(backgroundColor)
            : WidgetStateProperty.all(CustomColors.babyBlue),
        foregroundColor: foregroundColor != null
            ? WidgetStateProperty.all(foregroundColor)
            : WidgetStateProperty.all(Colors.white),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: isLoading
          ? const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Text(
              textAlign: TextAlign.center,
              text,
            ),
    );
  }
}
