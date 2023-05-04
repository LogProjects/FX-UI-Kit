import 'package:f_kit_x/components/textfields/core_textfield.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final double? width;
  final TextEditingController controller;

  const PasswordTextField({Key? key, this.width, required this.controller}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return CoreTextField(
      controller: widget.controller,
      width: widget.width,
      labelText: "Password",
      hintText: "Your Password...",
      isPassword: !isPasswordVisible,
      suffixIcon: IconButton(
        icon: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
        onPressed: () => setState(() => isPasswordVisible = !isPasswordVisible),
      ),
    );
  }
}
