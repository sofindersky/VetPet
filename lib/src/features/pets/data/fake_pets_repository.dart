import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/fake_test_data/pets_list.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';

class FakePetsRepository {
  Future<List<Pet>> fetchPets() async {
    await Future.delayed(const Duration(seconds: 1));
    pets.sort((a, b) => b.birthday.compareTo(a.birthday));
    return pets;
  }

  Future<Pet> fetchPetById(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    return pets.firstWhere((pet) => pet.petId == id);
  }

  Future<void> addPet(Pet pet) async {
    await Future.delayed(const Duration(seconds: 1));
    pets.add(pet);
  }
}

final fakePetsRepositoryProvider =
    Provider.autoDispose((ref) => FakePetsRepository());
