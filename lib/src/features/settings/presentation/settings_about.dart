import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';

class SettingsAbout extends StatelessWidget {
  const SettingsAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.tr.about_placeholder,
          style: s12w400black,
        ),
      ],
    );
  }
}
