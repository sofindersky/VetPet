import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';

//Lesson10: Added TextFormField widget to create a text field for the dialog
class AddPetDialogTextField extends StatelessWidget {
  const AddPetDialogTextField({
    required this.controller,
    required this.hintText,
    this.validator,
    this.readOnly,
    this.onTap,
    this.maxLength,
    super.key,
  });
  final TextEditingController controller;
  final String hintText;
  final bool? readOnly;
  final int? maxLength;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      maxLines: maxLength ?? 1,
      style: s12w400black,
      readOnly: readOnly ?? false,
      onTap: onTap,
      decoration: InputDecoration(
        errorStyle: s14w400red,
        hintText: hintText,
        hintStyle: s12w400grey,
        border: InputBorder.none,
      ),
      controller: controller,
    );
  }
}
