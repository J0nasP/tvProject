import 'package:booking_application/screens/signup.dart';
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

final firstNameController = TextEditingController();
final lastNameController = TextEditingController();
final emailController = TextEditingController();
final streetNameController = TextEditingController();
final cityController = TextEditingController();
final phoneController = TextEditingController();
final remarksController = TextEditingController();

String firstName = "";
String lastName = "";
String city = "";
String street = "";
String phoneNumber = "";
String email = "";
String remarks = "";

class UserInfoState extends State<UserInfo> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    streetNameController.dispose();
    cityController.dispose();
    phoneController.dispose();
    remarksController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List data = ModalRoute.of(context)?.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, "/time");
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
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
                controller: firstNameController,
                validator: reqValidate,
                decoration: InputDecoration(
                    hintText: "Fornavn",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
                onChanged: (value) {
                  firstName = firstNameController.text;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: lastNameController,
                validator: reqValidate,
                decoration: InputDecoration(
                    hintText: "Efternavn",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
                onChanged: (value) {
                  lastName = lastNameController.text;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: streetNameController,
                validator: reqValidate,
                decoration: InputDecoration(
                    hintText: "Gadenavn",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
                onChanged: (value) {
                  street = streetNameController.text;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: cityController,
                validator: reqValidate,
                decoration: InputDecoration(
                    hintText: "By",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
                onChanged: (value) {
                  city = cityController.text;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: phoneController,
                validator: phoneValidate,
                decoration: InputDecoration(
                    hintText: "Telefonnummer",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
                onChanged: (value) {
                  phoneNumber = phoneController.text;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                validator: emailValidate,
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
                onChanged: (value) {
                  email = emailController.text;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: remarksController,
                decoration: InputDecoration(
                    hintText: "evt. bemærkninger",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.blueAccent.withOpacity(0.1),
                    filled: true),
                onChanged: (value) {
                  remarks = remarksController.text;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => {
                  data.add(firstName),
                  data.add(lastName),
                  data.add(street),
                  data.add(city),
                  data.add(phoneNumber),
                  data.add(email),
                  data.add(phoneNumber),
                  data.add(remarks),
                  Navigator.popAndPushNamed(
                    context,
                    "/confirmation",
                    arguments: data,
                  ),
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
