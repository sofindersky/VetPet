import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_theme_provider.g.dart';

@Riverpod(keepAlive: true)
class AppTheme extends _$AppTheme {
  @override
  ThemeMode build() {
    return ThemeMode.light;
  }

  void toggleTheme() {
    if (state == ThemeMode.light) {
      state = ThemeMode.dark;
    } else {
      state = ThemeMode.light;
    }
  }
}
