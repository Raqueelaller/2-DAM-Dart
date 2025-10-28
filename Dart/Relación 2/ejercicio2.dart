/*2- Haremos una nueva versión del programa y la función anterior para que ésta última
reciba un parámetro: las horas hacia adelante o atrás a partir del momento actual, y calcule
y muestre esa fecha/hora. Investiga en la librería dart:core los métodos disponibles para el
manejo de DateTime. Utiliza el método add en este caso, pero experimenta otros*/

void main(List<String> args) {
  fechaYhora(2);
}
void fechaYhora(int hora){
  print("la hora modificada es: ${DateTime.now().subtract(Duration(hours: hora))}" );
}


