import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import '../shared/utils.dart';

final controller = GroupButtonController();

class TimeButtons extends StatefulWidget {
  @override
  _TimeButtonsState createState() => _TimeButtonsState();
}

class _TimeButtonsState extends State<TimeButtons> {
  final controller = GroupButtonController(
    selectedIndex: 20,
    selectedIndexes: [],
    disabledIndexes: [],
    onDisablePressed: (i) => {},
  );

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, "/calendar");
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hvilket tidspunkt ønsker du at reservere bord?",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            GroupButton(
              controller: controller,
              isRadio: false,
              buttons: generateTimeIntervals(),
              maxSelected: 1,
              onSelected: (val, i, selected) =>
                  debugPrint('Button: $val index: $i selected: $selected'),
              enableDeselect: true,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/userinfo");
              },
              child: const Text("Videre"),
            )
          ],
        ),
      ),
    );
  }
}
