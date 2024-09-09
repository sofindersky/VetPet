import 'package:pet_vet_project/src/features/pets/data/fake_pets_repository.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'pets_controller.g.dart';

//Lesson13: Check the PetsController class => here the riverpod_annotation is used to generate the providers
@riverpod
class PetsController extends _$PetsController {
  PetsController() : super();

  @override
  Future<List<Pet>> build() async {
    return await ref.read(fakePetsRepositoryProvider).fetchPets();
  }

  Future<Pet> fetchPetById(String id) async {
    state = AsyncLoading();

    return await ref.read(fakePetsRepositoryProvider).fetchPetById(id);
  }

  Future<bool> addPet(Pet pet) async {
    state = AsyncLoading();
    try {
      await ref.read(fakePetsRepositoryProvider).addPet(pet);
      state = AsyncData(await ref.read(fakePetsRepositoryProvider).fetchPets());
    } catch (e, st) {
      state = AsyncError(e, st);
    }
    return state.hasError == false;
  }
}

//Lesson13: Here we do not use the riverpod_annotation
final petByIdProvider = FutureProvider.family<Pet, String>((ref, id) async {
  return ref.read(fakePetsRepositoryProvider).fetchPetById(id);
});
