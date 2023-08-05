import 'package:flutter/material.dart';
import 'package:mobile_proyect/widgets/calendar.dart';

class CalendarScreenWidget extends StatefulWidget {
  const CalendarScreenWidget({super.key});

  @override
  State<CalendarScreenWidget> createState() => _CalendarScreenWidgetState();
}

class _CalendarScreenWidgetState extends State<CalendarScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Junio',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        //Aqui se cambia el color
        backgroundColor: const Color(0xFF0EF6CC),
      ),
      body: const CalendarWidget(),
      backgroundColor: const Color(0xFF1B2223),
    );
  }
}
