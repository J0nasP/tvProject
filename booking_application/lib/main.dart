import 'package:booking_application/screens/loginPage.dart';
import 'package:booking_application/screens/select_time.dart';
import 'package:booking_application/screens/signup.dart';
import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/personCount.dart';
import 'screens/calendar.dart';
import 'screens/userInfo.dart';
import 'screens/confirmation.dart';
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
        '/time': (context) => TimeButtons(),
      },
    );
  }
}
