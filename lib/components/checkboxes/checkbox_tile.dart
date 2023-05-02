import 'package:flutter/material.dart';

import '../../resource/theme_color.dart';

class CheckboxTile extends StatefulWidget {
  final bool isChecked;
  final String label;
  final void Function(bool)? onChanged;

  const CheckboxTile({
    Key? key,
    this.isChecked = false,
    required this.label,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CheckboxTile> createState() => _CheckboxTileState();
}

class _CheckboxTileState extends State<CheckboxTile> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  void _onValueChanged(bool? newValue) {
    if (newValue != null) {
      setState(() => isChecked = newValue);
      widget.onChanged!(newValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            value: isChecked,
            onChanged: widget.onChanged != null ? _onValueChanged : null,
            activeColor: ThemeColor.Primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            widget.label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
