import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/style/theme.dart';
import 'package:pet_vet_project/src/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      //Lesson14: router config
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'vet_pet_app',
      theme: CTheme.theme,
    );
  }
}
