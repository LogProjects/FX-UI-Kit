import 'package:flutter/material.dart';

import '../../resource/theme_color.dart';

class HoverButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? child;

  const HoverButton({
    Key? key,
    this.onPressed,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: ThemeColor.Primary,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
        child: child,
      ),
    );;
  }
}
