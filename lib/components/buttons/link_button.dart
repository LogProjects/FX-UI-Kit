import 'package:f_kit_x/resource/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  final String buttonText;
  final String linkURL;

  const LinkButton({
    Key? key,
    required this.linkURL,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => launchUrl(Uri.parse(linkURL)),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: ThemeColor.ButtonDisabled,
        backgroundColor: ThemeColor.White,
        foregroundColor: ThemeColor.Black,
        elevation: 0,
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
          child: Text(
            buttonText,
            style: const TextStyle(
              decoration: TextDecoration.underline,
            ),
          )),
    );
  }
}
