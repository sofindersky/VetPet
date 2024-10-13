import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import 'package:pet_vet_project/src/common_widgets/custom_button.dart';
import 'package:pet_vet_project/src/common_widgets/date_picker.dart';
import 'package:pet_vet_project/src/core/helper/date_formatter.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/helper/gaps.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';
import 'package:pet_vet_project/src/features/pets/domain/pet_model.dart';
import 'package:pet_vet_project/src/features/pets/presentation/pets_controller.dart';
import 'package:pet_vet_project/src/features/pets/presentation/widgets/add_pet_dialog_dropdown.dart';
import 'package:pet_vet_project/src/features/pets/presentation/widgets/add_pet_dialog_textfield.dart';

Future<void> showAddPetDialod({required BuildContext context}) async {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _AddPetDialogContent(),
            ),
          ),
        ),
      );
    },
  );
}

class _AddPetDialogContent extends ConsumerStatefulWidget {
  const _AddPetDialogContent();

  @override
  ConsumerState<_AddPetDialogContent> createState() =>
      _AddPetDialogContentState();
}

class _AddPetDialogContentState extends ConsumerState<_AddPetDialogContent> {
  late final TextEditingController _petNameController;
  late final TextEditingController _petBirthDateController;
  late final TextEditingController _petHistoryController;
  late final TextEditingController _petTypeController;
  late final GlobalKey<FormState> _formKey;

  void initState() {
    super.initState();
    _petNameController = TextEditingController();
    _petBirthDateController = TextEditingController();
    _petHistoryController = TextEditingController();
    _petTypeController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _petNameController.dispose();
    _petBirthDateController.dispose();
    _petHistoryController.dispose();
    _petTypeController.dispose();
    super.dispose();
  }

  PetType parsePetType(String translatedText, BuildContext context) {
    if (translatedText == context.tr.cat) {
      return PetType.cat;
    } else if (translatedText == context.tr.dog) {
      return PetType.dog;
    } else if (translatedText == context.tr.other) {
      return PetType.other;
    } else {
      throw Exception('Unknown pet type: $translatedText');
    }
  }

//TODO: check this method
  _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final dateFormatter = ref.watch(dateFormatterProvider);
      final dateParser = ref.read(dateParserProvider);
      final pet = Pet(
        petName: _petNameController.text,
        type: parsePetType(_petTypeController.text, context),
        birthday: dateParser(_petBirthDateController.text, dateFormatter),
        petHistory: _petHistoryController.text,
      );
      final succes =
          await ref.read(petsControllerProvider.notifier).addPet(pet);
      if (succes) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              context.tr.pet_was_added,
              style: AppTextStyles(context).s14w400beige,
            ),
            duration: Duration(milliseconds: 500),
          ),
        );
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(petsControllerProvider);
    final controllerState = controller.isLoading;
    ;
    final dateFormatter = ref.watch(dateFormatterProvider);

    final width = MediaQuery.of(context).size.width * 0.45;
    return Form(
      key: _formKey,
      child: SizedBox(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.tr.add_pet,
              style: AppTextStyles(context).s24w400black,
            ),
            gapH20,
            AddPetDialogTextField(
              validator: (value) {
                if ((value?.isEmpty ?? true) || value?.trim().isEmpty == true) {
                  return context.tr.field_is_required;
                }
                return null;
              },
              hintText: context.tr.pet_name,
              controller: _petNameController,
            ),
            AddPetTypeDialogDropdown(
              controller: _petTypeController,
            ),
            AddPetDialogTextField(
              validator: (value) {
                if ((value?.isEmpty ?? true) || value?.trim().isEmpty == true) {
                  return context.tr.field_is_required;
                }
                return null;
              },
              controller: _petBirthDateController,
              hintText: context.tr.birth_date,
              readOnly: true,
              onTap: () async {
                DateTime? selectedDate = await selectDate(context);
                if (selectedDate != null) {
                  _petBirthDateController.text =
                      dateFormatter.format(selectedDate);
                }
              },
            ),
            AddPetDialogTextField(
              validator: (value) {
                if ((value?.isEmpty ?? true) || value?.trim().isEmpty == true) {
                  return context.tr.field_is_required;
                }
                return null;
              },
              hintText: context.tr.info,
              controller: _petHistoryController,
            ),
            gapH4,
            CustomElevatedButton(
              onPressed: _submitForm,
              text: context.tr.add_pet,
              isLoading: controllerState,
            ),
          ],
        ),
      ),
    );
  }
}
