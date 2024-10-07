import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/core/helper/locale_controller.dart';

final localeProvider = Provider.autoDispose<Locale>((ref) {
  final localeAsyncValue = ref.watch(localeControllerProvider);

  return localeAsyncValue.when(
    data: (locale) => locale,
    loading: () => const Locale('uk'),
    error: (error, stack) => const Locale('uk'),
  );
});
