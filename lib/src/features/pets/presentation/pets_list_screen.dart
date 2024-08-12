import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_vet_project/src/common_widgets/main_app_bar.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/features/pets/presentation/pets_controller.dart';
import 'package:pet_vet_project/src/features/pets/presentation/pets_list_screen_row.dart';

//TODO: For now the riverpod package is used; maybe refactor later to use BLOC
class PetsListScreen extends ConsumerWidget {
  const PetsListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petsList = ref.watch(petsControllerProvider);
    return Scaffold(
      appBar: MainAppBar(
        title: tr('fluffy_patients'),
        onPressed: () => context.pop(),
      ),
      //TODO: create the error widget
      body: Column(
        children: [
          const PetsListScreenHeaderRow(),
          petsList
              .when(
                data: (data) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 8,
                          ),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final pet = data[index];
                        return PetsListScreenRow(pet: pet);
                      },),
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
