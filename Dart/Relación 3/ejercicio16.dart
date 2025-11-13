void main() {
  DateTime specificTime = DateTime(2024, 6, 17, 15, 30, 0);
  DateFormat localFormat = DateFormat.yMMMMEEEEd('es_ES').add_Hms();
  String localFormatted = localFormat.format(specificTime);
  print("Formato local: $localFormatted"); // Formato local: lunes 17 junio 2024 15:30:00
}