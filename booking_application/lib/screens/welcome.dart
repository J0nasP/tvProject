import 'package:flutter/material.dart';

class CustomUser extends StatefulWidget {
  const CustomUser({super.key});

  @override
  CustomUserState createState() {
    return CustomUserState();
  }
}

class CustomUserState extends State<CustomUser> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Application'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 17,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "/count");
                  },
                  child: const Text('Fortsæt til bestilling'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
