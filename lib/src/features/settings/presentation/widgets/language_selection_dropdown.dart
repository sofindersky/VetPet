import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/common_widgets/custom_dropdown.dart';
import 'package:pet_vet_project/src/features/settings/domain/language_model.dart';

class LanguageSelectionDropdown extends ConsumerWidget {
  const LanguageSelectionDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Language> lngList = Language.languageList();
    String currentLanguage = Localizations.localeOf(context).languageCode;

    return CustomDropdown<String>(
      value: currentLanguage,
      onChanged: (value) {},
      items: lngList.map((language) {
        return DropdownMenuItem<String>(
          value: language.code,
          child: Text(language.name),
        );
      }).toList(),
      selectedItemBuilder: (context) {
        return lngList.map((language) {
          return Center(
            child: Text(
              language.name,
            ),
          );
        }).toList();
      },
      itemBuilder: (language) => Text(language),
    );
  }
}
