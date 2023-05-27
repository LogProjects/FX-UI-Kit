import 'package:f_kit_x/app/components/component_display.dart';
import 'package:f_kit_x/app/components/component_list.dart';
import 'package:f_kit_x/components/switch/switch.dart';
import 'package:flutter/material.dart';

class SwitchComponents extends StatelessWidget {
  const SwitchComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentList(
      components: [
        ComponentDisplay(
          component: SwitchToggle(
            onToggle: (_) {},
          ),
        ),
        ComponentDisplay(
          component: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SwitchToggle(
                onToggle: (_) {},
              ),
              const SizedBox(width: 8.0),
              const LabelText(label: 'Airplane Mode'),
            ],
          ),
        ),
      ],
    );
  }
}
