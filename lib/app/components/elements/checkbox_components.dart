import 'package:f_kit_x/app/components/component_display.dart';
import 'package:f_kit_x/app/components/component_list.dart';
import 'package:f_kit_x/components/checkboxes/checkbox_tile.dart';
import 'package:flutter/material.dart';

class CheckboxComponents extends StatefulWidget {
  const CheckboxComponents({Key? key}) : super(key: key);

  @override
  State<CheckboxComponents> createState() => _CheckboxComponentsState();
}

class _CheckboxComponentsState extends State<CheckboxComponents> {
  @override
  Widget build(BuildContext context) {
    return ComponentList(
      components: [
        ComponentDisplay(
          component: CheckboxTile(
            onChanged: (_) {},
            label: 'Accept terms and conditions',
          ),
        ),
      ],
    );
  }
}
