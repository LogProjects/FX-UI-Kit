import 'package:f_kit_x/app/components/component_list.dart';
import 'package:f_kit_x/components/checkboxes/checkbox_demo.dart';
import 'package:flutter/material.dart';

class Checkboxes extends StatefulWidget {
  const Checkboxes({Key? key}) : super(key: key);

  @override
  State<Checkboxes> createState() => _CheckboxesState();
}

class _CheckboxesState extends State<Checkboxes> {
  late bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ComponentList(
      components: [
        CheckboxDemo(
          isChecked: false,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
          label: 'Accept terms and conditions',
        ),
      ],
    );
  }
}
