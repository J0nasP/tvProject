import 'package:flutter/material.dart';

typedef DayBuilder = Widget? Function(BuildContext context, DateTime day);

typedef FocusedDayBuilder = Widget? Function(
    BuildContext context, DateTime day, DateTime focusedDay);

typedef TextFormatter = String Function(DateTime date, dynamic locale);

enum AvailableGestures { none, verticalSwipe, horizontalSwipe, all }

enum CalenderFormat { month, twoWeeks, week }

enum StartingDayOfTheWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sundays
}

int getWeekDayNumber(StartingDayOfTheWeek weekday) {
  return StartingDayOfTheWeek.values.indexOf(weekday) + 1;
}

DateTime normalizeDate(DateTime date) {
  return DateTime.utc(date.year, date.month, date.day);
}

bool isSameDay(DateTime? a, DateTime? b) {
  if (a == null || b == null) {
    return false;
  }

  return a.year == b.year && a.month == b.month && a.day == b.day;
}
