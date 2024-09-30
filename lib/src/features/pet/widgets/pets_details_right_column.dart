import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/core/helper/date_formatter.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/helper/gaps.dart';
import 'package:pet_vet_project/src/core/style/color_extension.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/pet_icons_inherited.dart';

class PetsDetailsRightColumn extends ConsumerWidget {
  const PetsDetailsRightColumn({super.key, required this.pet});
  final Pet pet;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = Theme.of(context).extension<ColorExtension>();
    final dateFormatter = ref.watch(dateFormatterProvider);
    final petIcons = PetIconsInherited.of(context);

    final petImage = pet.type == PetType.dog
        ? petIcons.petIcons.puppyIcon
        : petIcons.petIcons.kittenIcon;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage(petImage),
            ),
            gapH16,
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: color?.softPink,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.tr.info,
                      style: AppTextStyles(context).s24w400black,
                    ),
                  ],
                ),
              ),
            ),
            gapH16,
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: color?.softPink,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.tr.pet_name,
                          style: AppTextStyles(context).s16w400black,
                        ),
                        gapH8,
                        Text(
                          context.tr.owner_name,
                          style: AppTextStyles(context).s16w400black,
                        ),
                        gapH8,
                        Text(
                          context.tr.birth_date,
                          style: AppTextStyles(context).s16w400black,
                        ),
                        gapH8,
                        Text(
                          context.tr.age,
                          style: AppTextStyles(context).s16w400black,
                        ),
                      ],
                    ).expanded(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          pet.petName,
                          style: AppTextStyles(context).s16w400black,
                        ),
                        gapH8,
                        Text(
                          pet.ownerFullName.isNotEmpty
                              ? pet.ownerFullName
                              : context.tr.no_owners_found,
                          style: AppTextStyles(context).s16w400black,
                        ),
                        gapH8,
                        Text(
                          dateFormatter.format(pet.birthday),
                          style: AppTextStyles(context).s16w400black,
                        ),
                        gapH8,
                        Text(
                          '${pet.age}',
                          style: AppTextStyles(context).s16w400black,
                        ),
                      ],
                    ).expanded(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
