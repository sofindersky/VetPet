import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';
part 'owner_model.g.dart';

@freezed
class Owner with _$Owner {
  const Owner._();
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory Owner({
    required String fullName,
    required int ownerId, // Ідентифікатор власника
    required String email,
    required String phoneNumber,
    required String address,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
