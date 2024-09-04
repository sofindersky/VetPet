import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateFormatterProvider = Provider.autoDispose<DateFormat>((ref) {
  return DateFormat('dd.MM.yyyy');
});
final dateParserProvider =
    Provider.autoDispose<Function(String, DateFormat)>((final ref) {
  return (final String dateString, final DateFormat dateFormatter) {
    return dateFormatter.parse(dateString);
  };
});
