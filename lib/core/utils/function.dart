import 'package:intl/intl.dart';

String parseBold(String text) {
  return text.replaceAllMapped(
    RegExp(r'\*\*(.*?)\*\*'),
    (match) => match.group(1)!.toUpperCase(),
  );
}

String formatDate(int timestamp) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
  String formatted = DateFormat('hh:mm a').format(dateTime);
  return formatted;
}
