import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/color_extension.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';

class AddPetTypeDialogDropdown extends StatefulWidget {
  const AddPetTypeDialogDropdown({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<AddPetTypeDialogDropdown> createState() =>
      _AddPetTypeDialogDropdownState();
}

class _AddPetTypeDialogDropdownState extends State<AddPetTypeDialogDropdown> {
  PetType? _selectedValue;

  @override
  void initState() {
    _selectedValue = null;
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    final customColors = Theme.of(context).extension<ColorExtension>();
    return DropdownButtonFormField<PetType>(
      decoration: InputDecoration(
        errorStyle: AppTextStyles(context).s14w400red,
        enabledBorder: UnderlineInputBorder(
          //TODO: replace with colorextesion
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
      hint: Text(
        context.tr.type,
        style: AppTextStyles(context).s12w400black,
      ),
      isDense: true,
      value: _selectedValue,
      items: PetType.values.map((final PetType type) {
        //Not the best solution here; I rather prefer the easy_localization packageå
        final text = switch (type) {
          PetType.cat => context.tr.cat,
          PetType.dog => context.tr.dog,
          PetType.other => context.tr.other,
        };

        return DropdownMenuItem<PetType>(
          value: type,
          child: Text(
            text,
            style: AppTextStyles(context).s12w400black,
          ),
        );
      }).toList(),
      onChanged: (final PetType? newValue) {
        setState(() {
          _selectedValue = newValue;
          widget.controller.text = switch (newValue) {
            PetType.cat => context.tr.cat,
            PetType.dog => context.tr.dog,
            PetType.other => context.tr.other,
            _ => '',
          };
        });
      },
      validator: (final value) {
        if (value == null) {
          return context.tr.field_is_required;
        }
        return null;
      },
    );
  }
}
