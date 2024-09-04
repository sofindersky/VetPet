import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/core/helper/date_formatter.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/helper/gaps.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/pet_icons_inherited.dart';

class PetsDetailsRightColumn extends ConsumerWidget {
  const PetsDetailsRightColumn({super.key, required this.pet});
  final Pet pet;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateFormatter = ref.watch(dateFormatterProvider);
    final petIcons = PetIconsInherited.of(context);

    final petImage = pet.type == PetType.dog
        ? petIcons.petIcons.puppyIcon
        : petIcons.petIcons.kittenIcon;
    return Card(
      color: CustomColors.beige,
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
                color: CustomColors.softPink,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(tr('info'), style: s24w400black),
                  ],
                ),
              ),
            ),
            gapH16,
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: CustomColors.softPink,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tr('pet_name'), style: s16w400black),
                        gapH8,
                        Text(tr('owner_name'), style: s16w400black),
                        gapH8,
                        Text(tr('birth_date'), style: s16w400black),
                        gapH8,
                        Text(tr('age'), style: s16w400black),
                      ],
                    ).expanded(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(pet.petName, style: s16w400black),
                        gapH8,
                        Text(
                          pet.ownerFullName.isNotEmpty
                              ? pet.ownerFullName
                              : tr('no_owners_found'),
                          style: s16w400black,
                        ),
                        gapH8,
                        Text(
                          dateFormatter.format(pet.birthday),
                          style: s16w400black,
                        ),
                        gapH8,
                        Text(
                          '${pet.age}',
                          style: s16w400black,
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
