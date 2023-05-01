import 'package:flutter/material.dart';

class IFadeTransition extends StatelessWidget {
  final Duration duration;
  final Widget child;
  final Curve curve;

  const IFadeTransition({
    Key? key,
    this.duration = const Duration(milliseconds: 150),
    required this.child,
    this.curve = Curves.easeInOut,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      switchInCurve: curve,
      switchOutCurve: curve,
      transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
      child: child,
    );
  }
}
