import 'package:f_kit_x/resource/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: 280,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: ThemeColor.Grey,
            width: 0.5,
          ),
        ),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onHover: (event) {},
          child: TableCalendar(
            firstDay: DateTime.utc(2020, 01, 01),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            rowHeight: 38,
            daysOfWeekHeight: 30,
            availableCalendarFormats: const {
              CalendarFormat.month: 'Month',
            },
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              titleTextStyle: const TextStyle(
                  fontSize: 14, height: 1.2, fontWeight: FontWeight.bold),
              leftChevronIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: ThemeColor.Grey,
                    width: 0.5,
                  ),
                ),
                child: const Icon(
                  Icons.chevron_left,
                  color: ThemeColor.DarkGrey,
                ),
              ),
              rightChevronIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: ThemeColor.Grey,
                    width: 0.5,
                  ),
                ),
                child:
                    const Icon(Icons.chevron_right, color: ThemeColor.DarkGrey),
              ),
              leftChevronMargin: const EdgeInsets.all(4),
              rightChevronMargin: const EdgeInsets.all(4),
              leftChevronPadding: const EdgeInsets.all(4),
              rightChevronPadding: const EdgeInsets.all(4),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: const TextStyle(
                  fontSize: 14, height: 1.2, color: ThemeColor.DarkGrey),
              weekendStyle: const TextStyle(
                  fontSize: 14, height: 1.2, color: ThemeColor.DarkGrey),
              dowTextFormatter: (date, locale) => DateFormat.E(locale)
                  .format(date)
                  .substring(0, 2)
                  .toUpperCase(),
            ),
            calendarStyle: const CalendarStyle(
              todayDecoration: BoxDecoration(
                color: ThemeColor.Grey,
                shape: BoxShape.rectangle,
              ),
              selectedDecoration: BoxDecoration(
                color: ThemeColor.Primary,
                shape: BoxShape.rectangle,
              ),
              defaultTextStyle: TextStyle(fontSize: 14, height: 1.5),
              weekendTextStyle: TextStyle(fontSize: 14, height: 1.2),
              outsideTextStyle: TextStyle(
                  fontSize: 14, height: 1.2, color: ThemeColor.DarkGrey),
              todayTextStyle:
                  TextStyle(fontSize: 14, color: ThemeColor.Black, height: 1.2),
              selectedTextStyle:
                  TextStyle(fontSize: 14, color: ThemeColor.White, height: 1.2),
              disabledTextStyle:
                  TextStyle(fontSize: 14, color: ThemeColor.Black, height: 1.2),
            ),
            calendarBuilders: CalendarBuilders(
              weekNumberBuilder: (BuildContext context, int weekNumber) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    weekNumber.toString(),
                    style: const TextStyle(fontSize: 14, height: 1.2),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
