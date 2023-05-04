// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final numberController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => setState(() => password = value),
      onSubmitted: (value) => setState(() => password = value),
      decoration: InputDecoration(
        hintText: 'Your Password...',
        labelText: 'Password',
       errorText: 'Password incorrect',
        suffixIcon: IconButton(
          icon: isPasswordVisible
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
          onPressed: () =>
              setState(() => isPasswordVisible = !isPasswordVisible),
        ),
        border: const OutlineInputBorder(),
      ),
      obscureText: isPasswordVisible,
    );
  }
}
