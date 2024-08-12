import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateFormatterProvider = Provider.autoDispose<DateFormat>((ref) {
  return DateFormat('dd.MM.yyyy');
});
