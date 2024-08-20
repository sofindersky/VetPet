import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';

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
  final ValueChanged<T> onChanged;
  final List<DropdownMenuItem<T>> items;
  final List<Widget> Function(BuildContext) selectedItemBuilder;
  final Widget Function(T) itemBuilder;
  final Widget? hint;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: SizedBox(
        height: 32,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: CustomColors.darkBeige,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: DropdownButton<T>(
            padding: const EdgeInsets.only(left: 16),
            style: s14w400black,
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
              color: CustomColors.black,
            ),
            dropdownColor: CustomColors.beige,
            selectedItemBuilder: (BuildContext context) {
              return selectedItemBuilder(context);
            },
          ),
        ),
      ),
    );
  }
}
