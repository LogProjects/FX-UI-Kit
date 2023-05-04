import 'package:f_kit_x/app/components/component_list.dart';
import 'package:flutter/material.dart';
import '../../../components/textfields/email_textfield.dart';
import '../../../components/textfields/password_textfield.dart';

class TextFieldComponents extends StatelessWidget {
  const TextFieldComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentList(
      components: [
        EmailTextField(),
        PasswordTextField(),
    ],
    );
  }
}
