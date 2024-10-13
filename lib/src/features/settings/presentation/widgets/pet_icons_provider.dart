import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/helper/images.dart';
import 'package:pet_vet_project/src/features/settings/domain/pets_icons.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/pet_icons_inherited.dart';

class PetIconsProvider extends StatefulWidget {
  const PetIconsProvider({super.key, required this.child});
  final Widget child;

  @override
  State<PetIconsProvider> createState() => _PetIconsProviderState();
}

class _PetIconsProviderState extends State<PetIconsProvider> {
  PetIcons _petIcons = PetIcons(
    puppyIcon: AppImage.puppy,
    kittenIcon: AppImage.kitten,
  );

  bool _isRealistic = true;

  @override
  Widget build(BuildContext context) {
    return PetIconsInherited(
      isRealistic: _isRealistic,
      petIcons: _petIcons,
      updateIcons: (newIcons) {
        setState(() {
          _petIcons = newIcons;
          _isRealistic = !_isRealistic;
        });
      },
      child: widget.child,
    );
  }
}
