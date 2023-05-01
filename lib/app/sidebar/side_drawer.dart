import 'package:flutter/material.dart';

import '../../resource/theme_color.dart';
import '../components/component_map.dart';
import 'drawer_content.dart';

class SideDrawer extends StatelessWidget {
  final void Function(UiElement element) onSelect;
  const SideDrawer({Key? key, required this.onSelect}) : super(key: key);
  final iconColor = ThemeColor.Primary;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: ThemeColor.White,
      ),
      child: SingleChildScrollView(
        child: DrawerContent(onSelect: onSelect),
      ),
    );
  }
}
