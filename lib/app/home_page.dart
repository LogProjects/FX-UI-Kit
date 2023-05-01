import 'package:f_kit_x/app/components/component_map.dart';
import 'package:f_kit_x/app/sidebar/app_drawer.dart';
import 'package:f_kit_x/app/sidebar/side_drawer.dart';
import 'package:flutter/material.dart';

import '../resource/theme_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  UiElement _selectedElement = Elements.ComponentList.first;

  void _setElement(UiElement element) => setState(() => _selectedElement = element);

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width > 900;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: ThemeColor.White,
      appBar: AppBar(
        title: const Text("FX UI Kit"),
        centerTitle: true,
        backgroundColor: ThemeColor.Black,
      ),
      drawer: isWideScreen ? null : AppDrawer(onSelect: _setElement, scaffoldKey: _scaffoldKey),
      body: Row(
        children: [
          if (isWideScreen) SideDrawer(onSelect: _setElement),
          if (isWideScreen) const VerticalDivider(),
          Expanded(child: _selectedElement.componentList),
        ],
      ),
    );
  }
}
