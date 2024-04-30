import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'shared/utils.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hvilket tidspunkt ønsker du at reservere bord?",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
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
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/userinfo");
              },
              child: Text("Videre"),
            )
          ],
        ),
      ),
    );
  }
}
