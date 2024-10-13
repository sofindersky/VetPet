import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';

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
      style: AppTextStyles(context).s12w400black,
      readOnly: readOnly ?? false,
      onTap: onTap,
      decoration: InputDecoration(
        errorStyle: AppTextStyles(context).s14w400red,
        hintText: hintText,
        hintStyle: AppTextStyles(context).s12w400grey,
        border: InputBorder.none,
      ),
      controller: controller,
    );
  }
}
