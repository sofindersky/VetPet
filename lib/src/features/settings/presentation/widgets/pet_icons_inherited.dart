import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/features/settings/domain/pets_icons.dart';

class PetIconsInherited extends InheritedWidget {
  const PetIconsInherited({
    super.key,
    required this.petIcons,
    required this.updateIcons,
    required this.isRealistic,
    required Widget child,
  }) : super(
          child: child,
        );
  final bool isRealistic;
  final PetIcons petIcons;
  final void Function(PetIcons newIcons) updateIcons;

  static PetIconsInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PetIconsInherited>()!;
  }

  @override
  bool updateShouldNotify(covariant PetIconsInherited oldWidget) {
    return petIcons != oldWidget.petIcons ||
        isRealistic != oldWidget.isRealistic;
  }
}
