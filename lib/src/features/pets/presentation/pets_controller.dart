import 'package:pet_vet_project/src/features/pets/data/fake_pets_repository.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'pets_controller.g.dart';

@riverpod
class PetsController extends _$PetsController {
  PetsController() : super();

  @override
  Future<List<Pet>> build() async {
    return await ref.read(fakeRepositoryProvider).fetchPets();
  }

  Future<Pet> fetchPetById(String id) async {
    return await ref.read(fakeRepositoryProvider).fetchPetById(id);
  }
}

final petByIdProvider = FutureProvider.family<Pet, String>((ref, id) async {
  return ref.read(fakeRepositoryProvider).fetchPetById(id);
});
