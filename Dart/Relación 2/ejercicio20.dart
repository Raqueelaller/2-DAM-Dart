/*20- Teniendo en cuenta que la creación de librerías de funciones favorece la reusabilidad de
las mismas, recoge todas las funciones del ejercicio 11 y ponlas en un archivo. A
continuación haz una versión de ese ejercicio, en el que importes la librería y te ahorres de
declarar dichas funciones
*/
import 'funciones.dart';
void main(List<String> args) {
  
List<double> listaTemperatura = [27,29,28,30];

double maxima = temperaturaMaxima(listaTemperatura);
double minima = temperaturaMinima(listaTemperatura);
double media = mediaTemperaturas(listaTemperatura);

print("la temperatura máxima es $maxima , la mínima es $minima y la media es $media");

}