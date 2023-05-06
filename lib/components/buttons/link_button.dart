import 'package:flutter/material.dart';

class LinkButton extends StatefulWidget {
  final void Function()? onPressed;
  final String label;

  const LinkButton({
    Key? key,
    this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  State<LinkButton> createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  bool isHovering = false;

  void _setHover(bool hovering) => setState(() => isHovering = hovering);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHover(true),
      onExit: (_) => _setHover(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Text(
          widget.label,
          style: TextStyle(decoration: isHovering ? TextDecoration.underline : null),
        ),
      ),
    );
  }
}
