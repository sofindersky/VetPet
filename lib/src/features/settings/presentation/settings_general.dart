import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/helper/images.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/language_selection_dropdown.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/pet_icons_inherited.dart';

class SettingsGeneral extends StatefulWidget {
  const SettingsGeneral({super.key});

  @override
  State<SettingsGeneral> createState() => _SettingsGeneralState();
}

class _SettingsGeneralState extends State<SettingsGeneral> {
  Locale? _currentLocale;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final newLocale = Localizations.localeOf(context);
    if (_currentLocale != newLocale) {
      setState(() {
        _currentLocale = newLocale;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isRealistic = PetIconsInherited.of(context).isRealistic;
    return Row(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              4.0,
            ),
            border: Border.all(
              color: CustomColors.beige,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                OverflowBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.tr.language,
                      style: s14w400black,
                    ),
                    LanguageSelectionDropdown(),
                  ],
                ),
                OverflowBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(context.tr.icons_style, style: s14w400black),
                    Text(
                      '${context.tr.realistic}/${context.tr.cute}',
                      style: s14w400black,
                    ),
                    Switch.adaptive(
                      value: isRealistic,
                      onChanged: (_) {
                        _updateIcons();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ).expanded(),
        Spacer(),
      ],
    );
  }

  _updateIcons() {
    final currentIcons = PetIconsInherited.of(context).petIcons;

    final newIcons = currentIcons.puppyIcon == AppImage.puppy &&
            currentIcons.kittenIcon == AppImage.kitten
        ? currentIcons.copyWith(
            puppyIcon: AppImage.puppyRealistic,
            kittenIcon: AppImage.kittenRealistic,
          )
        : currentIcons.copyWith(
            puppyIcon: AppImage.puppy,
            kittenIcon: AppImage.kitten,
          );

    PetIconsInherited.of(context).updateIcons(newIcons);
  }
}
