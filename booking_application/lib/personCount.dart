import 'package:flutter/material.dart';

class PersonCount extends StatefulWidget {
  const PersonCount({super.key});

  @override
  PersonCountState createState() {
    return PersonCountState();
  }
}

class PersonCountState extends State<PersonCount> {
  final _formKey = GlobalKey<FormState>;

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter == 0) {
        return;
      } else {
        _counter--;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hvor mange personer ønsker du at reservere til?",
              style: TextStyle(fontSize: 20),
            ),
            AnimatedOpacity(
              opacity: _counter != 0 ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 20.0),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.add),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/calendar");
              },
              child: Text("Videre"),
            ),
          ],
        ),
      ),
    );
  }
}
