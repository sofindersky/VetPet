import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';
import 'package:pet_vet_project/src/core/style/theme_extension.dart';

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.value,
    required this.onChanged,
    required this.items,
    required this.itemBuilder,
    required this.selectedItemBuilder,
    this.hint,
  });

  final T? value;
  final List<DropdownMenuItem<T>> items;
  final List<Widget> Function(BuildContext) selectedItemBuilder;
  final Widget? hint;

  final ValueChanged<T> onChanged;
  final Widget Function(T) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomThemeExtension>();

    return DropdownButtonHideUnderline(
      child: SizedBox(
        height: 32,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: customColors?.decorateBoxBackground,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: DropdownButton<T>(
            padding: const EdgeInsets.only(left: 16),
            style: AppTextStyles(context).s14w400black,
            value: value,
            hint: hint,
            items: items,
            onChanged: (newValue) {
              if (newValue != null) {
                onChanged(newValue);
              }
            },
            icon: const Icon(
              Icons.keyboard_arrow_down,
            ),
            dropdownColor: customColors?.decorateBoxBackground,
            selectedItemBuilder: (BuildContext context) {
              return selectedItemBuilder(context);
            },
          ),
        ),
      ),
    );
  }
}
