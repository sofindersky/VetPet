import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'pet_model.freezed.dart';
part 'pet_model.g.dart';

@JsonEnum()
enum PetType {
  cat,
  dog,
  other;
}

@freezed
class Pet with _$Pet {
  const Pet._();
  const factory Pet({
    required String petName,
    required String petId,
    @Default(0) int ownerId,
    @Default('') String ownerFullName,
    required DateTime birthday,
    required PetType type,
    required String petHistory,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
  factory Pet.create({
    required String petName,
    int ownerId = 0,
    String ownerFullName = '',
    required DateTime birthday,
    PetType type = PetType.other,
    required String petHistory,
  }) {
    return Pet(
      petName: petName,
      petId: const Uuid().v4(),
      ownerId: ownerId,
      ownerFullName: ownerFullName,
      birthday: birthday,
      type: type,
      petHistory: petHistory,
    );
  }
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
