import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/style/color_extension.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';

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
    final customColors = Theme.of(context).extension<ColorExtension>();
    return ElevatedButton(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(AppTextStyles(context).s12w400black),
        backgroundColor: backgroundColor != null
            ? WidgetStateProperty.all(backgroundColor)
            : WidgetStateProperty.all(customColors?.babyBlue),
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
