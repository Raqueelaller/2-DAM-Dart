/*1- Vamos a declarar en un programa Dart una función sin parámetros ni valores devueltos,
que únicamente muestre por pantalla la fecha y la hora actuales (DateTime.now() ).
*/

void main() {
  fechaYhora();

}

void fechaYhora(){
  DateTime.now();
  int dia=DateTime.now().day;  
  int mes=DateTime.now().month;
  int anyo=DateTime.now().year;
  int hora=DateTime.now().hour;
  int minuto = DateTime.now().minute;

  print("estamos a $dia en el mes $mes en el año $anyo y son las $hora y $minuto");

}

