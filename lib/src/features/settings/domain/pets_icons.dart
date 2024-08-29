class PetIcons {
  PetIcons({
    required this.puppyIcon,
    required this.kittenIcon,
  });

  final String puppyIcon;
  final String kittenIcon;

  PetIcons copyWith({
    String? puppyIcon,
    String? kittenIcon,
  }) {
    return PetIcons(
      puppyIcon: puppyIcon ?? this.puppyIcon,
      kittenIcon: kittenIcon ?? this.kittenIcon,
    );
  }

  @override
  String toString() =>
      'PetIcons(puppyIcon: $puppyIcon, kittenIcon: $kittenIcon)';
}
