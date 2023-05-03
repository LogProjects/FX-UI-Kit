import 'package:flutter/material.dart';

class LinkButton extends StatefulWidget {
  final void Function()? onPressed;
  final void Function(bool)? onHover;
  final String label;

  const LinkButton({
    Key? key,
    this.onPressed,
    this.onHover,
    required this.label,
  }) : super(key: key);

  @override
  State<LinkButton> createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovering = true),
      onExit: (event) => setState(() => isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Text(
          widget.label,
          style: TextStyle(
            fontSize: 16,
            decoration: isHovering ? TextDecoration.underline : null,
          ),
        ),
      ),
    );
  }
}
