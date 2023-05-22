import 'package:f_kit_x/app/components/component_display.dart';
import 'package:f_kit_x/app/components/component_list.dart';
import 'package:f_kit_x/components/textfields/email_textfield.dart';
import 'package:flutter/material.dart';
import '../../../components/textfields/password_textfield.dart';

class TextFieldComponents extends StatelessWidget {
  TextFieldComponents({Key? key}) : super(key: key);

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final fieldWidth = MediaQuery.of(context).size.width / 3;
    return ComponentList(
      components: [
        ComponentDisplay(component: EmailTextField(controller: controller1, width: fieldWidth)),
        ComponentDisplay(component: PasswordTextField(controller: controller2, width: fieldWidth)),
      ],
    );
  }
}
