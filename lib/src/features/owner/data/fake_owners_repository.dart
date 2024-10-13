import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:pet_vet_project/src/fake_test_data/owners_list.dart';
import 'package:pet_vet_project/src/features/owner/data/owners_repository.dart';
import 'package:pet_vet_project/src/features/owner/domain/owner_model.dart';

part 'fake_owners_repository.g.dart';

class FakeOwnersRepository implements OwnersRepository {
  @override
  Future<void> addOwner(Owner owner) {
    // TODO: implement addOwner
    throw UnimplementedError();
  }

  @override
  Future<Owner> fetchOwnerById(String id) {
    // TODO: implement fetchOwnerById
    throw UnimplementedError();
  }

  @override
  Future<List<Owner>> fetchOwners() async {
    await Future.delayed(const Duration(seconds: 1));
    return ownerList;
  }
}

@riverpod
FakeOwnersRepository fakeOwnersRepository(FakeOwnersRepositoryRef ref) {
  return FakeOwnersRepository();
}

@riverpod
Future<List<Owner>> ownersList(OwnersListRef ref) {
  final fakeOwnersRepository = ref.watch(fakeOwnersRepositoryProvider);
  return fakeOwnersRepository.fetchOwners();
}
