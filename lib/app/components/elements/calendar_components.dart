import 'package:f_kit_x/app/components/component_list.dart';
import 'package:f_kit_x/components/calendar/calendar.dart';
import 'package:flutter/material.dart';

class CalendarComponents extends StatelessWidget {
  const CalendarComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ComponentList(
      components: [
        Calendar(),
      ],
    );
  }
}
