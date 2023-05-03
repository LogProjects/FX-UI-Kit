import 'package:f_kit_x/app/components/component_list.dart';
import 'package:flutter/material.dart';
import '../../../components/textfields/email_textfield.dart';

class TextFields extends StatelessWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentList(
      components: [
        EmailTextField(),
    ],
    );
  }
}
