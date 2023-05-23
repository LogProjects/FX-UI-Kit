import 'package:f_kit_x/resource/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchToggle extends StatefulWidget {
  final bool isToggled;
  final String label;
  final void Function(bool)? onToggle;

  const SwitchToggle({
    Key? key,
    this.isToggled = false,
    required this.label,
    this.onToggle,
  }) : super(key: key);

  @override
  State<SwitchToggle> createState() => _SwitchToggleState();
}

class _SwitchToggleState extends State<SwitchToggle> {
  late bool isToggled = false;

  @override
  void initState() {
    super.initState();
    isToggled = widget.isToggled;
  }

  void _onValueChanged(bool newValue) {
    setState(() => isToggled = newValue);
    if (widget.onToggle != null) {
      widget.onToggle!(newValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlutterSwitch(
          width: 44.0,
          height: 24.0,
          toggleSize: 20.0,
          borderRadius: 30.0,
          padding: 2.0,
          activeColor: ThemeColor.Primary,
          inactiveColor: ThemeColor.InactiveColor,
          value: isToggled,
          onToggle:
              widget.onToggle != null ? _onValueChanged : (bool newValue) {},
        ),
        const SizedBox(width: 8),
        Text(
          widget.label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
