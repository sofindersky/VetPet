import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_vet_project/src/common_widgets/main_app_bar.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/helper/gaps.dart';
import 'package:pet_vet_project/src/features/pets/presentation/pets_controller.dart';
import 'package:pet_vet_project/src/features/pets/presentation/widgets/add_pet_dialog.dart';
import 'package:pet_vet_project/src/features/pets/presentation/widgets/pets_list_screen_header_row.dart';
import 'package:pet_vet_project/src/features/pets/presentation/widgets/pets_list_screen_row.dart';
import 'package:pet_vet_project/src/routes/app_routes.dart';

class PetsListScreen extends ConsumerWidget {
  const PetsListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petsList = ref.watch(petsControllerProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddPetDialod(context: context);
        },
        child: const Icon(Icons.add_circle_outline_rounded),
      ),
      appBar: MainAppBar(
        title: tr('fluffy_patients'),
        onPressed: () => context.pop(),
      ),
      //TODO: create the error widget
      body: Column(
        //TODO: add here the search option
        children: [
          const PetsListScreenHeaderRow(),
          petsList
              .when(
                data: (data) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => gapH8,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final pet = data[index];
                      return PetsListScreenRow(
                        pet: pet,
                        onTap: () {
                          //Lesson14: usage of context.goNamed()
                          context.goNamed(
                            AppRoutes.petDetails.name,
                            pathParameters: {'id': pet.petId},
                            extra: {'petName': pet.petName},
                          );
                        },
                      );
                    },
                  ),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) => Center(
                  child: Text('Error: $error'),
                ),
              )
              .expanded(),
        ],
      ),
    );
  }
}
