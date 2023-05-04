import 'package:f_kit_x/components/textfields/core_textfield.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final double? width;
  final TextEditingController controller;

  const EmailTextField({super.key, required this.controller, this.width});

  @override
  Widget build(BuildContext context) {
    return CoreTextField(
      controller: controller,
      width: width,
      labelText: "Email",
      suffixIcon: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () => controller.text = "",
      ),
    );
  }
}
