import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ExpandedExtensions on Widget {
  Widget expanded({int flex = 1}) => Expanded(flex: flex, child: this);
}

extension LocalizationExtension on BuildContext {
  get tr {
    return AppLocalizations.of(this);
  }
}
