import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';
import 'package:pet_vet_project/src/core/style/theme_extension.dart';

class OwnerScreenHeaderRow extends StatelessWidget {
  const OwnerScreenHeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomThemeExtension>();
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(color: customColors?.decorateBoxBackground),
          child: Row(
            children: [
              const Spacer(),
              Text(
                context.tr.full_name,
                style: AppTextStyles(context).s16w400black,
              ).expanded(),
              Text(context.tr.phone, style: AppTextStyles(context).s16w400black)
                  .expanded(),
              Text(context.tr.email, style: AppTextStyles(context).s16w400black)
                  .expanded(flex: 2),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
