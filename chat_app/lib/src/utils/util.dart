import 'package:chat_app/src/utils/pattern.dart';
import 'package:intl/intl.dart';

class Util {
  static String formatDateTimeToString(
      {required DateTime datetime, String? pattern, String? locale}) {
    return DateFormat(pattern ?? DateTimePattern.dateFormatDefault, locale).format(datetime);
  }

  static DateTime parseStringToDateTime(
      {required String timeStr, String? pattern, String? locale}) {
    return DateFormat(pattern ?? DateTimePattern.dateFormatDefault, locale).parse(timeStr);
  }
}
