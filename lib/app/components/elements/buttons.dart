import 'package:f_kit_x/app/components/playgrounds/loadable_primary_button_playground.dart';
import 'package:flutter/material.dart';

import '../../../components/buttons/hover_button.dart';
import '../../../components/buttons/primary_button.dart';
import '../component_list.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentList(
      components: [
        PrimaryButton(
          onPressed: () {  },
          child: const Text("Button"),
        ),
        HoverButton(
          onPressed: () {  },
          child: const Text("Button"),
        ),
        const LoadablePrimaryButtonPlayground(),
        PrimaryButton(
          onPressed: () {  },
          child: const Text("Button"),
        ),
        PrimaryButton(
          onPressed: () {  },
          child: const Text("Button"),
        ),
      ],
    );
  }
}
