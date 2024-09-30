import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';
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
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: CustomColors.lightLavender,
      ),
      child: DropdownButtonFormField<PetType>(
        decoration: InputDecoration(
          errorStyle: s14w400red,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: CustomColors.black),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: CustomColors.black),
          ),
        ),
        hint: Text(
          context.tr.type,
          style: s12w400black,
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
              style: s12w400black,
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
      ),
    );
  }
}
