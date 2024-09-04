import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';

class OwnerScreenHeaderRow extends StatelessWidget {
  const OwnerScreenHeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(color: CustomColors.beige),
          child: Row(
            children: [
              const Spacer(),
              Text(tr('full_name'), style: s16w400black).expanded(),
              Text(tr('phone'), style: s16w400black).expanded(),
              Text(tr('email'), style: s16w400black).expanded(flex: 2),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
