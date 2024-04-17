import 'package:booking_application/loginPage.dart';
import 'package:booking_application/signup.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';
import 'personCount.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'calendar.dart';
import 'userInfo.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Table Booking",
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const CustomUser(),
          '/count': (context) => const PersonCount(),
          '/calendar': (context) => const BookingCalendarDemoApp(),
          "/login": (context) => const LoginPage(),
          '/signup': (context) => const SignupPage(),
          '/userinfo': (context) => const UserInfo(),
        });
  }
}
