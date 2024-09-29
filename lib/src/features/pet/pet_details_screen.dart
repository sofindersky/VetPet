import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_vet_project/src/common_widgets/main_app_bar.dart';
import 'package:pet_vet_project/src/common_widgets/two_column_layout.dart';
import 'package:pet_vet_project/src/core/style/color_extension.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';

import 'package:pet_vet_project/src/features/pet/widgets/pets_details_right_column.dart';
import 'package:pet_vet_project/src/features/pets/presentation/pets_controller.dart';

class PetDetailsScreen extends ConsumerWidget {
  const PetDetailsScreen({
    super.key,
    required this.petName,
    required this.id,
  });

  final String id;
  final String petName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petAsyncValue = ref.watch(petByIdProvider(id));
    final colors = Theme.of(context).extension<ColorExtension>();

    return Scaffold(
      backgroundColor: colors?.lightLavender,
      appBar: MainAppBar(
        title: '$petName',
        onPressed: () => context.pop(),
      ),
      body: petAsyncValue.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
        data: (pet) => TwoColumnLayout(
          start: PetsDetailsRightColumn(pet: pet),
          end: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    pet.petHistory,
                    style: AppTextStyles(context).s16w500black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
