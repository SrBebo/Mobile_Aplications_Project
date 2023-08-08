import 'package:flutter/material.dart';
import 'package:mobile_proyect/providers/calendar_provider.dart';
import 'package:mobile_proyect/screens/calendar_screen.dart';
import 'package:mobile_proyect/screens/scree_tarea.dart';
import 'package:mobile_proyect/screens/screen._login.dart';
import 'package:mobile_proyect/widgets/calendar.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('es', null).then((_) {
      runApp(MyApp());
    });
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CalendarProvider())
      ],
      child: MaterialApp(
        title: 'Calendar App',
        initialRoute: MainWidget.routeName,
        routes: {
          MainWidget.routeName: (context) => const LoginWidget(),
        },
      ),
    );
  }
}

class MainWidget extends StatefulWidget {
  static const routeName = '/';

  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  //int _selectIndex = 0;

  /*final List<Widget> _mainWidgets = const [
    //Add widgets here
    //Widget Calendar
    //Widget Day
    //CalendarWidget()
  ];*/

  //Use just in case it needs another widget to be added
  /*
  void _onItapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //body: _mainWidgets[_selectIndex],
      body: CalendarWidget(),
    );
  }
}
