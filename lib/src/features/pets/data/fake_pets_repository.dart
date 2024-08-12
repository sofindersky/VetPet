import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/fake_test_data/pets_list.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';

class FakePetsRepository {
  Future<List<Pet>> fetchPets() async {
    await Future.delayed(const Duration(seconds: 1));
    return pets;
  }
}

final fakeRepositoryProvider =
    Provider.autoDispose((ref) => FakePetsRepository());
