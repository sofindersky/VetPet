import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';

//Lesson10: Add a dropdown to select the pet type
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
          tr('type'),
          style: s12w400black,
        ),
        isDense: true,
        value: _selectedValue,
        items: PetType.values.map((final PetType type) {
          return DropdownMenuItem<PetType>(
            value: type,
            child: Text(
              type.petTypeName,
              style: s12w400black,
            ),
          );
        }).toList(),
        onChanged: (final PetType? newValue) {
          setState(() {
            _selectedValue = newValue;
            widget.controller.text = newValue!.petTypeName;
          });
        },
        validator: (final value) {
          if (value == null) {
            return tr('field_is_required');
          }
          return null;
        },
      ),
    );
  }
}
