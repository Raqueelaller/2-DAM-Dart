/*4- Haremos un pequeño programa en Dart que defina e inicialice internamente un String y,
a continuación, una serie de datos de cada uno de los tipos vistos en la relación 1 (int,
double, bool, List, Map, Enum, Set) y concatenamos el String con cada uno de ellos
utilizando el operador + y la función toString(). Mostraremos el resultado por pantalla para
ver cómo se comporta esta función.
*/

String texto = "hola";
int num=1;
double num2=2.2;
bool verdad=true;
List<String> listaDia = ["lunes","martes","miércoles","jueves","viernes"];
 Map<String, double> tiempo={
  "lunes":25.5,
  "martes":30,
  "miercoles":27.4,
  "jueves":30.5,
  "viernes":28,
  "sabado":29,
  "domingo":26
};
enum ColorArcoiris { rojo, verde, azul,naranja,amarillo,violeta }

void main(){

  print(texto+num.toString()+num2.toString()+verdad.toString()+listaDia.toString()+tiempo.toString()+ColorArcoiris.values.toString());

}
