import 'package:flutter/material.dart';

import '../../resource/theme_color.dart';
import '../components/component_map.dart';
import 'drawer_content.dart';

class AppDrawer extends StatelessWidget {
  final void Function(UiElement element) onSelect;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const AppDrawer({Key? key, required this.onSelect, required this.scaffoldKey}) : super(key: key);

  final iconColor = ThemeColor.Primary;
  
  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(8.0);
    return Drawer(
      width: 250,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: radius, bottomRight: radius),
      ),
      backgroundColor: ThemeColor.White,
      child: SingleChildScrollView(
        child: DrawerContent(onSelect: (element) {
          onSelect(element);
          scaffoldKey.currentState?.closeDrawer();
        }),
      ),
    );
  }
}
