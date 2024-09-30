import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final dateFormatterProvider = Provider.autoDispose<DateFormat>((ref) {
  return DateFormat('dd.MM.yyyy');
});
final dateParserProvider =
    Provider.autoDispose<Function(String, DateFormat)>((final ref) {
  return (final String dateString, final DateFormat dateFormatter) {
    return dateFormatter.parse(dateString);
  };
});
