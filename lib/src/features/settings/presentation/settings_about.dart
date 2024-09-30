import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';

import 'package:pet_vet_project/src/core/helper/extensions.dart';

class SettingsAbout extends StatelessWidget {
  const SettingsAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.tr.about_placeholder,
          style: AppTextStyles(context).s12w400black,
        ),
      ],
    );
  }
}
