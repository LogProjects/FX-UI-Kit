import 'package:flutter/material.dart';

import '../../resource/theme_color.dart';

class CheckboxDemo extends StatefulWidget {
  final bool isChecked;
  final String label;
  final ValueChanged<bool?>? onChanged;

  const CheckboxDemo({
    Key? key,
    this.isChecked = false, // Initialize isChecked with default value of false
    required this.label,
    this.onChanged,
  }) : super(key: key);

  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool? isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
              if (widget.onChanged != null) {
                widget.onChanged!(isChecked);
              }
            });
          },
          activeColor: ThemeColor.Primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
