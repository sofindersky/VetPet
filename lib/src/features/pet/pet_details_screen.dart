import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_vet_project/src/common_widgets/main_app_bar.dart';
import 'package:pet_vet_project/src/common_widgets/two_column_layout.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';
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
    //Lesson13: The usage of the riverpod
    final petAsyncValue = ref.watch(petByIdProvider(id));

    return Scaffold(
      backgroundColor: CustomColors.lightLavender,
      appBar: MainAppBar(
        title: '$petName',
        onPressed: () => context.pop(),
      ),
      //The usage of the AsyncValue.when method
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
                  child: Text(pet.petHistory, style: s16w500black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
