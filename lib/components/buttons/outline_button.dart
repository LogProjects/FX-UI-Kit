import 'package:f_kit_x/resource/theme_color.dart';
import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? child;

  const OutlineButton({
    Key? key,
    required this.onPressed,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: ThemeColor.White,
        foregroundColor: ThemeColor.Primary,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
