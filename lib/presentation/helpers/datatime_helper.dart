import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  static DateTime? customTime;

  static DateTime get current {
    if (customTime != null) {
      return customTime!;
    } else {
      return DateTime.now();
    }
  }

  String getDateByRegion(BuildContext context) {
    return DateFormat(DateFormat.yMd(Localizations.localeOf(context).languageCode).pattern).format(this);
  }

  String getHourAndMinuteByRegion(BuildContext context) {
    return DateFormat(DateFormat.Hm(Localizations.localeOf(context).languageCode).pattern).format(this);
  }

  String getFullHourByRegion(BuildContext context) {
    return DateFormat(DateFormat.Hms(Localizations.localeOf(context).languageCode).pattern).format(this);
  }

  int getDaysDifference() {
    final now = DateTime.now();
    final difference = now.difference(this);
    return difference.inDays;
  }
}
