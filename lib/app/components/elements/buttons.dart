import 'package:f_kit_x/app/components/component_display.dart';
import 'package:f_kit_x/app/components/playgrounds/loadable_primary_button_playground.dart';
import 'package:f_kit_x/components/buttons/destructive_button.dart';
import 'package:f_kit_x/components/buttons/link_button.dart';
import 'package:flutter/material.dart';

import '../../../components/buttons/outline_button.dart';
import '../../../components/buttons/hover_button.dart';
import '../../../components/buttons/primary_button.dart';
import '../../../components/buttons/secondary_button.dart';
import '../component_list.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentList(
      components: [
        ComponentDisplay(
          component: PrimaryButton(
            onPressed: () {},
            child: const Text("Button"),
          ),
        ),
        ComponentDisplay(
          component: HoverButton(
            onPressed: () {},
            child: const Text("Button"),
          ),
        ),
        ComponentDisplay(
          component: SecondaryButton(
            onPressed: () {},
            child: const Text("Secondary"),
          ),
        ),
        ComponentDisplay(
          component: DestructiveButton(
            onPressed: () {},
            child: const Text("Destructive"),
          ),
        ),
        ComponentDisplay(
          component: OutlineButton(
            onPressed: () {},
            child: const Text("Outline"),
          ),
        ),
        ComponentDisplay(
          component: const LoadablePrimaryButtonPlayground(),
        ),
        ComponentDisplay(
          component: LinkButton(
            onPressed: () {},
            label: 'Link',
          ),
        ),
      ],
    );
  }
}
