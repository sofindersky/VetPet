import 'package:easy_localization/easy_localization.dart';

abstract class EmptyTextFieldValidator {
  static String? validate(final String? value) {
    if ((value?.isEmpty ?? true) || value?.trim().isEmpty == true) {
      return tr('field_is_required');
    }
    return null;
  }
}
