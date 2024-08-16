import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:easy_localization/easy_localization.dart';
part 'pet_model.freezed.dart';
part 'pet_model.g.dart';

@JsonEnum()
enum PetType {
  cat,
  dog,
  other;

  String get name {
    switch (this) {
      case PetType.cat:
        return tr('cat');
      case PetType.dog:
        return tr('dog');
      case PetType.other:
        return tr('other');
    }
  }
}

@freezed
class Pet with _$Pet {
  const Pet._();
  const factory Pet({
    required String petName,
    required String petId,
    required int ownerId,
    required String ownerFullName,
    required DateTime birthday,
    @Default(PetType.other) PetType type,
    required String petHistory,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  int get age {
    final now = DateTime.now();
    int age = now.year - birthday.year;
    if (now.month < birthday.month ||
        (now.month == birthday.month && now.day < birthday.day)) {
      age--;
    }
    return age;
  }
}
