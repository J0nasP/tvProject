// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import "package:group_button/group_button.dart";

/// Example event class.
class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

// Generate between numbers 12:00 - 21:30 with a interval off 0:30 for the time buttons
List<String> generateTimeIntervals() {
  List<String> timeIntervals = [];
  for (int hour = 12; hour <= 21; hour++) {
    for (int minute = 0; minute < 60; minute += 30) {
      String hourStr = hour.toString().padLeft(2, '0');
      String minuteStr = minute.toString().padLeft(2, '0');
      timeIntervals.add('$hourStr:$minuteStr');
    }
  }
  return timeIntervals;
}
