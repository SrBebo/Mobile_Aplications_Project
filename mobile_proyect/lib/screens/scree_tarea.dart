import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//import 'package:date_time_picker_widget/date_time_picker_widget.dart';

class CrearTareaWidget extends StatefulWidget {
  const CrearTareaWidget({super.key});

  @override
  State<CrearTareaWidget> createState() => _CrearTareaWidgetState();
}

class _CrearTareaWidgetState extends State<CrearTareaWidget> {
  bool isChecked = false;

  String capitalizeFirstLetter(String text) {
    if (text == null || text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  String getFormattedDateTime(int value) {
    DateTime now = DateTime.now();
    DateTime increasedTime = now.add(Duration(hours: value));

    String formattedDate =
        DateFormat("EEEE d 'de' MMMM 'de' y", 'es').format(now);
    List<String> dateParts = formattedDate.split(" ");
    String formattedDay = capitalizeFirstLetter(dateParts[0]);
    String formattedDayNumber = dateParts[1];
    String formattedMonth = capitalizeFirstLetter(dateParts[3]);
    String formattedYear = dateParts[5];

    formattedDate =
        "$formattedDay, $formattedDayNumber de $formattedMonth de $formattedYear";
    String formattedTime = DateFormat("HH'h'mm").format(increasedTime);

    return "$formattedDate                   $formattedTime";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B2223),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/caledario');
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0EF6CC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(70, 40),
                  ),
                  child: const Text(
                    "Crear",
                    style: TextStyle(
                      color: Color(0xFF1B2223),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Inter",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Ingresar título de la tarea',
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.52),
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
              style: TextStyle(
                color: Colors.white.withOpacity(0.52),
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Divider(
            thickness: 2,
            color: Colors.white,
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Fecha inicio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  getFormattedDateTime(0),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Fecha fin",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  getFormattedDateTime(1),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                  ),
                ),
                /*DateTimePicker(
                  initialSelectedDate: DateTime.now().add(
                      Duration(days: 1)), // Fecha inicial después de startDate
                  startDate: DateTime.now().add(Duration(days: 1)),
                  endDate: DateTime.now().add(Duration(days: 30)),
                  startTime: DateTime(DateTime.now().year, DateTime.now().month,
                      DateTime.now().day, DateTime.now().hour),
                  endTime: DateTime(DateTime.now().year, DateTime.now().month,
                      DateTime.now().day, 23),
                  timeInterval: Duration(minutes: 15),
                  datePickerTitle: 'Elige la fecha',
                  timePickerTitle: 'Elige la hora',
                  timeOutOfRangeError:
                      'Lo siento, la tienda está cerrada en este momento',
                  onDateChanged: (date) {
                    // Manejar la fecha seleccionada aquí
                    print('Date changed: $date');
                  },
                  onTimeChanged: (time) {
                    // Manejar la hora seleccionada aquí
                    print('Time changed: $time');
                  },
                  is24h: false,
                )*/
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Divider(
            thickness: 2,
            color: Colors.white,
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Descripción",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  maxLines: null,
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:
                        'Agregar una descripción que te recuerde de que \nva el evento',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.52),
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Roboto",
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.52),
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Roboto",
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      side: const BorderSide(width: 2, color: Colors.white),
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 20),
                    const Flexible(
                      child: Text(
                        "Recibir notificaciones hasta los primero 10 \nminutos de iniciado el evento",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Divider(
            thickness: 2,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
