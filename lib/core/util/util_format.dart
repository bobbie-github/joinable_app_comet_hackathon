
import 'package:intl/intl.dart';
import '../config/theme/color.dart';

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

}