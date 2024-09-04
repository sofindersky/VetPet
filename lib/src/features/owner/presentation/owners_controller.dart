import 'package:pet_vet_project/src/features/owner/data/fake_owners_repository.dart';
import 'package:pet_vet_project/src/features/owner/domain/owner_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'owners_controller.g.dart';

@riverpod
class OwnersController extends _$OwnersController {
  OwnersController() : super();

  @override
  Future<List<Owner>> build() async {
    return await ref.read(fakeOwnersRepositoryProvider).fetchOwners();
  }

  Future<Owner> fetchOwnerById(String id) async {
    return await ref.read(fakeOwnersRepositoryProvider).fetchOwnerById(id);
  }
}
