import 'package:flutter/material.dart';

class ReservationItem {
  final int reservationId;
  final double pax;
  final DateTime dateTime;
  final String remarks;

  ReservationItem(
      {required this.reservationId,
      required this.pax,
      required this.dateTime,
      required this.remarks});
}

class Reservation with ChangeNotifier {
  List<ReservationItem> _reservation = [];

  List<ReservationItem> get reservation => [..._reservation];
}
