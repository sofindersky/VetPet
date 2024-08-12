import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/core/helper/date_formatter.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/helper/images.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';

class PetsListScreenRow extends ConsumerWidget {
  const PetsListScreenRow({super.key, required this.pet});
  final Pet pet;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateFormatter = ref.watch(dateFormatterProvider);
    final petImage = pet.type == PetType.dog ? AppImage.puppy : AppImage.kitten;
    return Column(
      children: [
        Row(
          children: [
            Image.asset(petImage, width: 50, height: 50).expanded(),
            Text(pet.petName, style: s16w400black).expanded(),
            Text(pet.ownerFullName, style: s16w400black).expanded(),
            Text(dateFormatter.format(pet.birthday), style: s16w400black)
                .expanded(),
            Text(pet.type.name, style: s16w400black).expanded()
          ],
        ),
      ],
    );
  }
}

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
              Text(tr('pet_name'), style: s16w400black).expanded(),
              Text(tr('owner_name'), style: s16w400black).expanded(),
              Text(tr('birth_date'), style: s16w400black).expanded(),
              Text(tr('type'), style: s16w400black).expanded(),
            ],
          ),
        ),
      ],
    );
  }
}
