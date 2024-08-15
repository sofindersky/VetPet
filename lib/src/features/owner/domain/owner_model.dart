class Owner {
  Owner({
    required this.ownerId,
    required this.ownerFullName,
    required this.email,
    required this.registrationDate,
    required this.phoneNumber,
    required this.address,
  });
  final int ownerId;
  final String ownerFullName;
  final String email;
  final DateTime registrationDate;
  final String phoneNumber;
  final String address;

  @override
  String toString() {
    return 'Owner(ownerId: $ownerId, ownerFullName: $ownerFullName, email: $email, registrationDate: $registrationDate, phoneNumber: $phoneNumber, address: $address)';
  }

  Owner copyWith({
    int? ownerId,
    String? ownerFullName,
    String? email,
    DateTime? registrationDate,
    String? phoneNumber,
    String? address,
  }) {
    return Owner(
      ownerId: ownerId ?? this.ownerId,
      ownerFullName: ownerFullName ?? this.ownerFullName,
      email: email ?? this.email,
      registrationDate: registrationDate ?? this.registrationDate,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
    );
  }

  @override
  bool operator ==(covariant Owner other) {
    if (identical(this, other)) return true;

    return other.ownerId == ownerId &&
        other.ownerFullName == ownerFullName &&
        other.email == email &&
        other.registrationDate == registrationDate &&
        other.phoneNumber == phoneNumber &&
        other.address == address;
  }

  @override
  int get hashCode {
    return ownerId.hashCode ^
        ownerFullName.hashCode ^
        email.hashCode ^
        registrationDate.hashCode ^
        phoneNumber.hashCode ^
        address.hashCode;
  }
}
