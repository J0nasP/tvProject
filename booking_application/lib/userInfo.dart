import 'package:booking_application/signup.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

final emailValidate = ValidationBuilder().email().required().build();
final phoneValidate = ValidationBuilder().phone().required().build();
final reqValidate = ValidationBuilder().required().build();

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  UserInfoState createState() {
    return UserInfoState();
  }
}

class UserInfoState extends State<UserInfo> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50),
              const Text(
                "Udfyld dine informationer",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: reqValidate,
                decoration: InputDecoration(
                    hintText: "Fornavn",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: reqValidate,
                decoration: InputDecoration(
                    hintText: "Efternavn",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: reqValidate,
                decoration: InputDecoration(
                    hintText: "Gadenavn",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: reqValidate,
                decoration: InputDecoration(
                    hintText: "By",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: phoneValidate,
                decoration: InputDecoration(
                    hintText: "Telefonnummer",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: emailValidate,
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "evt. bemærkninger",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, "/confirmation"),
                },
                child: const Text("Videre"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
