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

  @override
  Widget build(BuildContext context) {
    final List data = ModalRoute.of(context)?.settings.arguments as List;
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
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Vi ser frem til dit besøg",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(data);
                  },
                  child: Text("debug")),
              ElevatedButton(
                onPressed: () {
                  closeAppUsingPop();
                },
                child: const Text('Luk'),
              ),
              const SizedBox(
                height: 20,
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
