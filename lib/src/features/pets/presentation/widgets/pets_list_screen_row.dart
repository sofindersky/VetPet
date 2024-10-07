import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/pet_icons_inherited.dart';

class PetsListScreenRow extends StatelessWidget {
  const PetsListScreenRow({super.key, required this.pet, required this.onTap});
  final Pet pet;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final petIcons = PetIconsInherited.of(context);
    final petImage = pet.type == PetType.dog
        ? petIcons.petIcons.puppyIcon
        : petIcons.petIcons.kittenIcon;
    final type = pet.type;
    final petText = switch (type) {
      PetType.cat => context.tr.cat,
      PetType.dog => context.tr.dog,
      PetType.other => context.tr.other,
    };
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(petImage, width: 50, height: 50).expanded(),
              Text(pet.petName, style: AppTextStyles(context).s16w400black)
                  .expanded(),
              Text(
                pet.ownerFullName.isNotEmpty
                    ? pet.ownerFullName
                    : context.tr.no_owners_found,
                style: AppTextStyles(context).s16w400black,
              ).expanded(),
              Text(
                petText,
                style: AppTextStyles(context).s16w400black,
              ).expanded(),
            ],
          ),
        ],
      ),
    );
  }
}
