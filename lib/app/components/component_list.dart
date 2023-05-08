import 'package:flutter/material.dart';

import '../../resource/theme_color.dart';

class ComponentList extends StatelessWidget {
  final List<Widget> components;
  const ComponentList({Key? key, required this.components}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: components.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 350,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: ThemeColor.Primary,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: components[index],
          ),
        );
      },
    );
  }
}
