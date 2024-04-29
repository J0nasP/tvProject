import 'package:booking_application/loginPage.dart';
import 'package:booking_application/signup.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';
import 'personCount.dart';
import 'calendar.dart';
import 'userInfo.dart';
import 'confirmation.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Table Booking",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blueAccent,
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const CustomUser(),
          '/count': (context) => const PersonCount(),
          "/login": (context) => const LoginPage(),
          '/signup': (context) => const SignupPage(),
          '/userinfo': (context) => const UserInfo(),
          '/confirmation': (context) => const ConfirmationPage(),
          '/calendar': (context) => TableBasicsExample(),
        });
  }
}
