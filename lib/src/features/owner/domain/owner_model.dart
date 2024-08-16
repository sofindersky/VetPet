import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';

part 'owner_model.freezed.dart';
part 'owner_model.g.dart';

@freezed
class Owner with _$Owner {
  const Owner._();
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory Owner({
    required String fullName,
    required int ownerId,
    required String email,
    required String phoneNumber,
    required String address,
    required Pet pet,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
