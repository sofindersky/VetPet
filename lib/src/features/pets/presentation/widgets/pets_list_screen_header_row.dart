import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/color_extension.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';
import 'package:pet_vet_project/src/core/style/theme_extension.dart';

class PetsListScreenHeaderRow extends StatelessWidget {
  const PetsListScreenHeaderRow({super.key});
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<CustomThemeExtension>();
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: colorScheme?.decorateBoxBackground,
          ),
          child: Row(
            children: [
              const Spacer(),
              Text(tr('pet_name'), style: AppTextStyles(context).s16w400black)
                  .expanded(),
              Text(tr('owner_name'), style: AppTextStyles(context).s16w400black)
                  .expanded(),
              Text(tr('type'), style: AppTextStyles(context).s16w400black)
                  .expanded(),
            ],
          ),
        ),
      ],
    );
  }
}
