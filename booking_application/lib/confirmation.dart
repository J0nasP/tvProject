import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({super.key});

  @override
  ConfirmationPageState createState() {
    return ConfirmationPageState();
  }
}

class ConfirmationPageState extends State<ConfirmationPage> {
  final _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 60,
              ),
              const Text(
                "SUCCES ",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Vi ser frem til dit besøg",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  closeAppUsingPop();
                },
                child: Text('Luk'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void closeAppUsingPop() {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
}
