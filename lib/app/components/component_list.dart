import 'package:f_kit_x/app/components/component_display.dart';
import 'package:flutter/material.dart';

import '../../resource/theme_color.dart';

class ComponentList extends StatelessWidget {
  final List<ComponentDisplay> components;
  const ComponentList({Key? key, required this.components}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: components.length,
      itemBuilder: (context, index) {
        final componentDisplay = components[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: componentDisplay.height ?? 350,
            width: componentDisplay.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: ThemeColor.Primary, width: 0.5),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: componentDisplay.component,
          ),
        );
      },
    );
  }
}
