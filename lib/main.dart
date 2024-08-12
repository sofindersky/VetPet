import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        //TODO: Add supported locales and translations
        supportedLocales: const [Locale('en')],
        fallbackLocale: const Locale('uk'),
        path: 'assets/translations',
        child: const MyApp(),
      ),
    ),
  );
}
