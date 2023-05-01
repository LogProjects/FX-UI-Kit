import 'package:flutter/material.dart';

import '../../../components/buttons/loadable_text_button.dart';


class LoadablePrimaryButtonPlayground extends StatefulWidget {
  const LoadablePrimaryButtonPlayground({Key? key}) : super(key: key);

  @override
  State<LoadablePrimaryButtonPlayground> createState() => _LoadablePrimaryButtonPlaygroundState();
}

class _LoadablePrimaryButtonPlaygroundState extends State<LoadablePrimaryButtonPlayground> {

  bool _isLoading = false;

  void _handleButtonClick() {
    setState(() {_isLoading = true;});

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {_isLoading = false;});
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoadablePrimaryButton(
      isLoading: _isLoading,
      onPressed: _handleButtonClick,
      text: "Loadable Primary Button",
    );
  }
}
