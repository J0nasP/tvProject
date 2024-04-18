import 'package:booking_application/loginPage.dart';
import 'package:booking_application/signup.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';
import 'personCount.dart';
import 'calendar.dart';
import 'userInfo.dart';
import 'confirmation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Table Booking",
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blueAccent,
          ),
        ),
        initialRoute: '/count',
        routes: {
          '/': (context) => const CustomUser(),
          '/count': (context) => const PersonCount(),
          "/login": (context) => const LoginPage(),
          '/signup': (context) => const SignupPage(),
          '/userinfo': (context) => const UserInfo(),
          '/confirmation': (context) => const ConfirmationPage(),
        });
  }
}
