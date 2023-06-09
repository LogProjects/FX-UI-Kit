import 'package:f_kit_x/resource/theme_color.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? child;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ThemeColor.Primary,
        disabledBackgroundColor: ThemeColor.ButtonDisabled,
        foregroundColor: ThemeColor.ButtonPrimaryForeground,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
        child: child,
      ),
    );
  }
}
