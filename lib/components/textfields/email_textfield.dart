// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  @override
  _EmailTextFieldState createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 74.0, horizontal: 4.0),
      child: TextField(
        controller: emailController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              width: 1.0,
              style: BorderStyle.solid,
            ),
          ),
          hintText: 'name@example.com',
          labelText: 'Email',
          prefixIcon: const Icon(Icons.email),
          suffixIcon: emailController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => emailController.clear(),
                ),
        ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
