import 'package:f_kit_x/app/components/component_display.dart';
import 'package:f_kit_x/app/components/component_list.dart';
import 'package:f_kit_x/components/progress/progress.dart';
import 'package:flutter/material.dart';

class ProgressComponents extends StatefulWidget {
  const ProgressComponents({super.key});

  @override
  State<ProgressComponents> createState() => _ProgressComponentsState();
}

class _ProgressComponentsState extends State<ProgressComponents> {
  @override
  Widget build(BuildContext context) {
    return ComponentList(
      components: [
        ComponentDisplay(
          component: const Progress(
            complete: 100,
            progress: 60,
          ),
        ),
        ComponentDisplay(
            component: const Progress(
          complete: 100,
          progress: 35,
        ))
      ],
    );
  }
}
