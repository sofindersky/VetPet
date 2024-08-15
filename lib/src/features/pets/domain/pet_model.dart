// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:easy_localization/easy_localization.dart';

enum PetType {
  cat,
  dog;

  String get name {
    switch (this) {
      case PetType.cat:
        return tr('cat');
      case PetType.dog:
        return tr('dog');
    }
  }
}

class Pet {
  final String petName;
  final String petId;
  final int ownerId;
  final String ownerFullName;
  final DateTime birthday;
  final PetType type;
  final String petHistory;
  final int age;

  Pet({
    required this.petName,
    required this.petId,
    required this.ownerId,
    required this.ownerFullName,
    required this.birthday,
    required this.type,
    required this.petHistory,
  }) : age = calculateAge(birthday);

  static int calculateAge(final DateTime birthday) {
    final now = DateTime.now();
    final age = now.year - birthday.year;
    if (now.month < birthday.month ||
        (now.month == birthday.month && now.day < birthday.day)) {
      return age - 1;
    }
    return age;
  }

  //TODO: Later add toMap and fromMap methods to convert to and from json when the firebase is added

  Pet copyWith({
    String? petName,
    String? petId,
    int? ownerId,
    String? ownerFullName,
    DateTime? birthday,
    PetType? type,
    String? petHistory,
  }) {
    return Pet(
      petName: petName ?? this.petName,
      petId: petId ?? this.petId,
      ownerId: ownerId ?? this.ownerId,
      ownerFullName: ownerFullName ?? this.ownerFullName,
      birthday: birthday ?? this.birthday,
      type: type ?? this.type,
      petHistory: petHistory ?? this.petHistory,
    );
  }

  @override
  String toString() {
    return 'Pet(petName: $petName, petId: $petId, ownerId: $ownerId, ownerFullName: $ownerFullName, birthday: $birthday, type: $type, petHistory: $petHistory)';
  }

  @override
  bool operator ==(covariant Pet other) {
    if (identical(this, other)) return true;

    return other.petName == petName &&
        other.petId == petId &&
        other.ownerId == ownerId &&
        other.ownerFullName == ownerFullName &&
        other.birthday == birthday &&
        other.type == type &&
        other.petHistory == petHistory;
  }

  @override
  int get hashCode {
    return petName.hashCode ^
        petId.hashCode ^
        ownerId.hashCode ^
        ownerFullName.hashCode ^
        birthday.hashCode ^
        type.hashCode ^
        petHistory.hashCode;
  }
}
