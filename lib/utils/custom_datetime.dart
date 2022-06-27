import 'package:intl/intl.dart';

class CustomDateTime {
  static String dateFormat = "dd-MM-yyyy";
  static String timeFormat = "hh:mma";

  static String getDateString(dynamic datetime) {
    String dateString = formatDateTime(datetime, dateFormat);

    return dateString;
  }

  static String getTimeString(dynamic datetime) {
    String timeString = formatDateTime(datetime, timeFormat);

    return timeString;
  }

  static String getDateAndTimeString(dynamic datetime) {
    String dateTimeString = formatDateTime(datetime, "$dateFormat $timeFormat");

    return dateTimeString;
  }

  static formatDateTime(dynamic datetime, String format) => datetime is DateTime
      ? DateFormat(format).format(datetime)
      : formatDateTime(DateTime.parse(datetime), format);

  static String flipFormat(String datetime) =>
      datetime.split("-").reversed.toList().join("-");

  static nowWithTimeZoneOffset([int offset = 3]) {
    return DateTime.now()
        .toUtc()
        .add(Duration(hours: offset))
        .toIso8601String();
  }
}
