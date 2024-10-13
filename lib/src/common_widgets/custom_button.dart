import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/style/color_extension.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.isLoading,
  }) : super(key: key);

  final String text;
  final bool isLoading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<ColorExtension>();
    return ElevatedButton(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(AppTextStyles(context).s12w400black),
      ),
      onPressed: onPressed,
      child: isLoading
          ? Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                color: customColors?.white,
              ),
            )
          : Text(
              textAlign: TextAlign.center,
              text,
            ),
    );
  }
}
