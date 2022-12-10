import 'package:intl/intl.dart';

class Utils {
  Utils._();

  static String dateTimeFormat(DateTime dateTime) {
    var DateValue = new DateFormat("yyyy-MM-ddTHH:mm:ssZ").parseUTC(dateTime.toIso8601String())
        .toLocal();
    return DateFormat('dd-MM-yyyy HH:mm').format(DateValue);
  }

  static String dateFormat(DateTime dateTime) {
    var DateValue = new DateFormat("yyyy-MM-ddTHH:mm:ssZ").parseUTC(dateTime.toIso8601String())
        .toLocal();
    return DateFormat('dd-MM-yyyy').format(DateValue);
  }
  static int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

}