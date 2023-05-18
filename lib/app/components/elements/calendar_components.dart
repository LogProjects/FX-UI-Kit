import 'package:f_kit_x/app/components/component_display.dart';
import 'package:f_kit_x/app/components/component_list.dart';
import 'package:f_kit_x/components/buttons/primary_button.dart';
import 'package:f_kit_x/components/calendar/calendar.dart';
import 'package:flutter/material.dart';

class CalendarComponents extends StatelessWidget {
  const CalendarComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentList(
      components: [
        ComponentDisplay(
          component: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Calendar(
              firstDay: DateTime(2023, 1, 1), lastDay: DateTime(2024, 12, 31)),
          ),
        ),
        ComponentDisplay(
          height: 600,
          component: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Calendar(
              firstDay: DateTime.now(), lastDay: DateTime(2023, 12, 31)),
          ),
        ),
        ComponentDisplay(
          height: 600,
          component: PrimaryButton(
              onPressed: () {
                showDialog(context: context, builder: (context) {
                  return Material(child: Calendar(
                    enableBorder: false, 
                    firstDay: DateTime(2023, 1, 1), lastDay: DateTime(2023, 12, 1),));
                });
              },
            child: const Text("Open Calendar"),
          ),
        ),
      ],
    );
  }
}
