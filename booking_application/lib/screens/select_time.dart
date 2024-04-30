import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import '../shared/utils.dart';

final controller = GroupButtonController();

class TimeButtons extends StatefulWidget {
  const TimeButtons({super.key});
  @override
  TimeButtonsState createState() => TimeButtonsState();
}

class TimeButtonsState extends State<TimeButtons> {
  final controller = GroupButtonController(
    selectedIndex: 20,
    selectedIndexes: [],
    disabledIndexes: [],
    onDisablePressed: (i) => {},
  );

  @override
  Widget build(BuildContext context) {
    final List data = ModalRoute.of(context)?.settings.arguments as List;
    String selectedValue = "";
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
              onSelected: (val, i, selected) {
                debugPrint('Button: $val index: $i selected: $selected');
                selectedValue = val;
              },
              enableDeselect: true,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                data.add(selectedValue);
                Navigator.popAndPushNamed(
                  context,
                  "/userinfo",
                  arguments: data,
                );
              },
              child: const Text("Videre"),
            )
          ],
        ),
      ),
    );
  }
}
