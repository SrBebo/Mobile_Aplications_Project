import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      view: CalendarView.workWeek,
      cellBorderColor: Colors.white,
      headerStyle: const CalendarHeaderStyle(
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      monthViewSettings: const MonthViewSettings(
        appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
        monthCellStyle: MonthCellStyle(
          textStyle: TextStyle(
            color: Colors.white,
          ),
          trailingDatesTextStyle: TextStyle(
            color: Colors.white,
          ),
          leadingDatesTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      appointmentTextStyle: const TextStyle(color: Colors.white),
    );
  }
}
