import 'package:f_kit_x/components/buttons/primary_button.dart';
import 'package:flutter/material.dart';

import '../../resource/theme_color.dart';
import '../animations/i_animated_content.dart';

class LoadablePrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final bool isLoading;

  const LoadablePrimaryButton({
    Key? key,
    this.onPressed,
    required this.text,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onPressed: isLoading ? () {} : onPressed,
      child: _getButton(),
    );
  }

  Widget? _getButton() {
    return IAnimatedContent(
      child: isLoading
          ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Loading"),
                SizedBox(width: 16),
                SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(
                    color: ThemeColor.ButtonPrimaryForeground,
                    strokeWidth: 2,
                  ),
                ),
              ],
            )
          : Text(text),
    );
  }
}
