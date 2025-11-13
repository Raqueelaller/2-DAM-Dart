import 'package:ejercicio16/ejercicio16.dart' as ejercicio16;
import 'package:intl/intl.dart' ;
import 'package:intl/date_symbol_data_local.dart';
void main(List<String> arguments) {
   initializeDateFormatting('es_ES', null);
  DateTime specificTime = DateTime(2024, 6, 17, 15, 30, 0);
  DateFormat localFormat = DateFormat.yMMMMEEEEd('es_ES').add_Hms();
  String localFormatted = localFormat.format(specificTime);
  print("Formato local: $localFormatted"); // Formato local: lunes 17 junio 2024 15:30:00

    DateTime now = DateTime.now();
  print("Fecha y hora actual: $now");

   DateTime date1 = DateTime(2024, 6, 17, 15, 30, 0);
  DateTime date2 = DateTime(2024, 6, 17, 18, 45, 0);
  DateTime date3 = DateTime(2023, 12, 25, 10, 0, 0);

  // Ejemplo simple: comparación de igualdad
  bool isEqual = date1 == date2;
  print("date1 == date2 : $isEqual"); // false

  // Ejemplo intermedio: comparación de desigualdad
  bool isNotEqual = date1 != date3;
  print("date1 != date3 : $isNotEqual"); // true

  // Ejemplo complejo: uso de varios operadores
  // Ejemplo simple: uso de isBefore()
  bool isDate1BeforeDate2 = date1.isBefore(date2);
  print("date1 es anterior a date2 : $isDate1BeforeDate2"); // true

  // Ejemplo intermedio: uso de isAfter()
  bool isDate2AfterDate3 = date2.isAfter(date3);
  print("date2 es posterior a date3 : $isDate2AfterDate3"); // true

  // Ejemplo complejo: combinar isBefore() e isAfter() para verificar si una fecha está entre dos otras
  bool isDate1Between = date1.isAfter(date3) && date1.isBefore(date2);
  print("date1 está entre date3 y date2 : $isDate1Between"); // true

  


  }
