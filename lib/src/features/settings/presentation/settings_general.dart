import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/helper/images.dart';
import 'package:pet_vet_project/src/core/style/color_extension.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';
import 'package:pet_vet_project/src/core/style/text_theme_provider.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/language_selection_dropdown.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/pet_icons_inherited.dart';

class SettingsGeneral extends ConsumerStatefulWidget {
  const SettingsGeneral({super.key});

  @override
  ConsumerState<SettingsGeneral> createState() => _SettingsGeneralState();
}

class _SettingsGeneralState extends ConsumerState<SettingsGeneral> {
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
    final provider = ref.watch(appThemeProvider);
    final lightTheme = provider == ThemeMode.light;
    final color = Theme.of(context).extension<ColorExtension>()?.beige;
    return Row(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              4.0,
            ),
            border: Border.all(
              color: color!,
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
                      tr('language'),
                      style: AppTextStyles(context).s14w400black,
                    ),
                    LanguageSelectionDropdown(),
                  ],
                ),
                OverflowBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tr('icons_style'),
                      style: AppTextStyles(context).s14w400black,
                    ),
                    Text(
                      '${tr('realistic')}/${tr('cute')}',
                      style: AppTextStyles(context).s14w400black,
                    ),
                    Switch(
                      value: isRealistic,
                      onChanged: (_) {
                        _updateIcons();
                      },
                    ),
                    Text(
                      'THEME',
                      style: AppTextStyles(context).s14w400black,
                    ),
                    Switch(
                      value: lightTheme,
                      onChanged: (_) {
                        ref.read(appThemeProvider.notifier).toggleTheme();
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
