import 'package:pet_vet_project/src/features/owner/domain/owner_model.dart';

abstract interface class OwnersRepository {
  Future<List<Owner>> fetchOwners();
  Future<Owner> fetchOwnerById(String id);
  Future<void> addOwner(Owner owner);
}
