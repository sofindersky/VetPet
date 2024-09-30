import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';

class PetsListScreenHeaderRow extends StatelessWidget {
  const PetsListScreenHeaderRow({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(color: CustomColors.beige),
          child: Row(
            children: [
              const Spacer(),
              Text(context.tr.pet_name, style: s16w400black).expanded(),
              Text(context.tr.owner_name, style: s16w400black).expanded(),
              Text(context.tr.type, style: s16w400black).expanded(),
            ],
          ),
        ),
      ],
    );
  }
}
