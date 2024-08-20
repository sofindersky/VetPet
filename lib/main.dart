import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/app.dart';
import 'package:pet_vet_project/src/core/helper/supported_locales.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        fallbackLocale: const Locale('uk'),
        supportedLocales: SupportedLocales.supportedLocales,
        path: 'assets/translations',
        child: const MyApp(),
      ),
    ),
  );
}
