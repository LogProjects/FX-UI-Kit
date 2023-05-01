import 'package:f_kit_x/app/components/component_map.dart';
import 'package:flutter/material.dart';

import '../../components/buttons/hover_button.dart';

class DrawerContent extends StatelessWidget {
  final void Function(UiElement element) onSelect;
  const DrawerContent({Key? key, required this.onSelect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        ...Elements.ComponentList.map(
          (uiElement) => HoverButton(
            onPressed: () => onSelect(uiElement),
            child: Text(uiElement.name),
          ),
        ),
      ],
    );
  }
}
