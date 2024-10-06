import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_controller.g.dart';

@riverpod
class LocaleController extends _$LocaleController {
  late SharedPreferences _sharedPrefs;

  @override
  FutureOr<Locale> build() async {
    _sharedPrefs = await SharedPreferences.getInstance();
    final languageCode = _sharedPrefs.getString('language_code') ?? 'uk';
    return Locale(languageCode);
  }

  FutureOr<void> setLocale(String languageCode) async {
    await _sharedPrefs.setString('language_code', languageCode);
    state = AsyncData(Locale(languageCode));
  }
}
