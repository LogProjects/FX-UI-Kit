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
          component: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Calendar(),
          ),
        ),
        ComponentDisplay(
          height: 600,
          component: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Calendar(),
          ),
        ),
        ComponentDisplay(
          height: 600,
          component: PrimaryButton(
              onPressed: () {
                showDialog(context: context, builder: (context) {
                  return const Material(child: Calendar(enableBorder: false));
                });
              },
            child: const Text("Open Calendar"),
          ),
        ),
      ],
    );
  }
}
