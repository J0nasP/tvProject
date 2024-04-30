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

  int counter2 = 6;
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
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, "/");
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hvor mange personer ønsker du at reservere til?",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            AnimatedOpacity(
              opacity: _counter != 0 ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_counter',
                style: const TextStyle(fontSize: 40, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  backgroundColor: Colors.blue,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20.0),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  backgroundColor: Colors.blue,
                  child: const Icon(Icons.add),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
//                checkCount();
                if (_counter == 0) {
                  return;
                } else {
                  Navigator.popAndPushNamed(context, "/calendar",
                      arguments: _counter);
                }
              },
              child: const Text("Videre"),
            ),
          ],
        ),
      ),
    );
  }
}
