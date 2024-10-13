import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pet_vet_project/src/core/helper/locale_provider.dart';
import 'package:pet_vet_project/src/core/style/text_theme_provider.dart';
import 'package:pet_vet_project/src/core/style/theme_config.dart';
import 'package:pet_vet_project/src/routes/app_routes.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeProvider);

    final locale = ref.watch(localeProvider);

    return MaterialApp.router(
      locale: locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: localeResolutionCallback,
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'vet_pet_app',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
    );
  }
}

Locale? localeResolutionCallback(Locale? locale, supportedLocales) {
  if (locale == null) {
    return supportedLocales.first;
  }
  for (var supportedLocale in supportedLocales) {
    if (supportedLocale.languageCode == locale.languageCode) {
      return supportedLocale;
    }
  }
  return supportedLocales.first;
}
