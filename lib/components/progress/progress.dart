import 'package:f_kit_x/resource/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Progress extends StatefulWidget {
  final int progress;
  final int complete;
  const Progress({Key? key, required this.progress, required this.complete})
      : super(key: key);

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    final double percentage = widget.progress / widget.complete;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LinearPercentIndicator(
          animation: true,
          percent: percentage,
          lineHeight: 20,
          width: 500,
          backgroundColor: ThemeColor.Grey,
          progressColor: ThemeColor.Primary,
          barRadius: const Radius.circular(30),
        ),
      ],
    );
  }
}
