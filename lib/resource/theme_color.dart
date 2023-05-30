// ignore_for_file: constant_identifier_names

import 'dart:ui';

abstract class ThemeColor {
  static const Color Black = Color.fromRGBO(0, 0, 0, 1.0);
  static const Color RegularBlack = Color.fromRGBO(23, 23, 23, 1.0);
  static const Color RegularBlack2 = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color ShimmerBase = Color.fromRGBO(242, 242, 242, 1.0);
  static const Color ProgressBackground = Color.fromRGBO(247, 247, 247, 1.0);
  static const Color White = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color Grey = Color.fromRGBO(226, 232, 240, 1.0);
  static const Color DarkGrey = Color.fromRGBO(100, 116, 139, 1.0);
  static const Color InactiveColor = Color.fromRGBO(226, 232, 240, 1.0);

  static const Color Primary = Color.fromRGBO(16, 23, 42, 1.0);
  static const Color ButtonDisabled = Color.fromRGBO(136, 139, 148, 1.0);
  static const Color ButtonPrimaryForeground =
      Color.fromRGBO(248, 250, 252, 1.0);

  static const Color Secondary = Color.fromRGBO(241, 245, 249, 1);
  static const Color Destructive = Color.fromRGBO(244, 3, 5, 1.0);

  static const Color TextFieldDisabled = Color.fromRGBO(220, 222, 227, 1.0);
}
