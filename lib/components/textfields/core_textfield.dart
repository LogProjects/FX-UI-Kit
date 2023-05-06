import 'package:flutter/material.dart';

class CoreTextField extends StatefulWidget {
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? errorBorderColor;
  final Color? focusedErrorBorderColor;
  final Color? disabledBorderColor;
  final String? hintText;
  final String? labelText;
  final bool enabled;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final bool isSuffixPermanent;
  final TextInputAction? textInputAction;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final double? width;
  final bool isPassword;
  final String? Function(String?)? validators;

  const CoreTextField({
    Key? key,
    required this.controller,
    this.validators,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.focusedErrorBorderColor,
    this.disabledBorderColor,
    this.hintText,
    this.labelText,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.isSuffixPermanent = false,
    this.keyboardType,
    this.textInputAction,
    this.width,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<CoreTextField> createState() => _CoreTextFieldState();
}

class _CoreTextFieldState extends State<CoreTextField> {
  TextEditingController get controller => widget.controller;

  @override
  void initState() {
    super.initState();
    controller.addListener(() => setState(() {}));
  }

  OutlineInputBorder? _getBorder(Color? color) {
    return color != null
        ? OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: color),
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    final decoration = InputDecoration(
      enabledBorder: _getBorder(widget.enabledBorderColor),
      focusedBorder: _getBorder(widget.focusedBorderColor ?? Theme.of(context).colorScheme.primary),
      errorBorder: _getBorder(widget.errorBorderColor),
      focusedErrorBorder: _getBorder(widget.focusedBorderColor),
      disabledBorder: _getBorder(widget.disabledBorderColor),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      hintText: widget.hintText,
      labelText: widget.labelText,
      prefixIcon: widget.prefixIcon,
      suffixIcon: widget.isSuffixPermanent ? widget.suffixIcon : controller.text.isEmpty ? const SizedBox() : widget.suffixIcon,
      enabled: widget.enabled,
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: widget.width,
        child: TextFormField(
          enabled: widget.enabled,
          controller: controller,
          decoration: decoration,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          validator: widget.validators,
          obscureText: widget.isPassword,
          enableSuggestions: !widget.isPassword,
          autocorrect: !widget.isPassword,
        ),
      ),
    );
  }
}
