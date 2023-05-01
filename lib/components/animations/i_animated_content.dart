import 'package:flutter/material.dart';

class IAnimatedContent extends StatelessWidget {
  final Duration duration;
  final Widget child;
  final Curve curve;

  const IAnimatedContent({
    Key? key,
    this.duration = const Duration(milliseconds: 150),
    this.curve = Curves.easeInOut,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: duration,
      curve: curve,
      child: AnimatedSwitcher(
        duration: duration,
        switchInCurve: curve,
        switchOutCurve: curve,
        transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
        child: child,
      ),
    );
  }
}
