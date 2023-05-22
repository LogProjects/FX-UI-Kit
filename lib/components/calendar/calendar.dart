import 'dart:math';

import 'package:f_kit_x/resource/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  final bool enableBorder;
  final DateTime? firstDay;
  final DateTime? lastDay;

  const Calendar({
    Key? key,
    this.enableBorder = true,
    this.firstDay,
    this.lastDay,
  }) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  void _onDateSelected(selectedDay, focusedDay) => setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    return AspectRatio(
      aspectRatio: 9 / 10,
      child: LayoutBuilder(
        builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        return Container(
            decoration: widget.enableBorder ? BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ThemeColor.DarkGrey, width: 0.5),
            ) : null,
          child: TableCalendar(
            shouldFillViewport: true,
            firstDay: widget.firstDay ?? today.subtract(const Duration(days: 60)),
            lastDay: widget.lastDay ?? today.add(const Duration(days: 60)),
            focusedDay: _focusedDay,
            calendarFormat: CalendarFormat.month,
            daysOfWeekHeight: height * 0.1,
            startingDayOfWeek: StartingDayOfWeek.monday,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: _onDateSelected,
            headerStyle: _headerStyle(height, width),
            daysOfWeekStyle: DaysOfWeekStyle(dowTextFormatter: _dowFormatter),
            calendarStyle: CalendarStyle(
              todayDecoration: _createDecoration(ThemeColor.Grey),
              selectedDecoration: _createDecoration(ThemeColor.Primary),
                defaultDecoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(4)),
              todayTextStyle: const TextStyle(color: ThemeColor.DarkGrey),  
              outsideTextStyle: const TextStyle(color: ThemeColor.DarkGrey),
              disabledTextStyle: const TextStyle(color: ThemeColor.Grey),
              tablePadding: EdgeInsets.symmetric(horizontal: width * 0.01),
            ),
          ),
        );
        }
      ),
    );
  }

  String _dowFormatter(date, locale) => DateFormat.E(locale).format(date).substring(0, 2).toUpperCase();

  HeaderStyle _headerStyle(maxHeight, maxWidth) => HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(fontSize: min(maxWidth * 0.05, 24), fontWeight: FontWeight.bold),
        headerPadding: EdgeInsets.zero,
        leftChevronIcon: _icon(Icons.chevron_left_rounded, maxWidth * 0.05),
        rightChevronIcon: _icon(Icons.chevron_right_rounded, maxWidth * 0.05),
        leftChevronMargin: EdgeInsets.symmetric(vertical: maxHeight * 0.03, horizontal: maxWidth * 0.04),
        rightChevronMargin: EdgeInsets.symmetric(vertical: maxHeight * 0.03, horizontal: maxWidth * 0.04),
        leftChevronPadding: EdgeInsets.zero,
        rightChevronPadding: EdgeInsets.zero,
      );

  Widget _icon(IconData icon, double size) => Container(
        height: min(size * 1.5, 60),
        width: min(size * 1.5, 60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: ThemeColor.Grey, width: 0.5),
        ),
        child: Icon(icon, color: ThemeColor.DarkGrey, size: min(size, 40)),
      );

  Decoration _createDecoration(Color color) =>
      ShapeDecoration.fromBoxDecoration(
        BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(4),
        ),
      );
}
