/*11- Haz un pequeño programa en Dart que declare una lista de temperaturas máximas. A
continuación, deberá invocar a una función que reciba como parámetro a esa lista y calcule
y devuelva cual es la temperatura máxima. Haz otra con el mismo esquema de parámetros
y devolución, que devuelva la mínima, y otra para la media.
*/
import 'dart:io';
double temperaturaMaxima(List<double> listaTemperatura){
  double temperaturaMaxima=0;
  for(int i=0; i<listaTemperatura.length ; i ++){
    if(listaTemperatura.elementAt(i)>temperaturaMaxima){
      temperaturaMaxima=listaTemperatura.elementAt(i);
    }
  }
  return temperaturaMaxima;
}

double temperaturaMinima(List<double> listaTemperatura){
  double temperaturaMinima=9999;
  for(int i=0; i<listaTemperatura.length ; i ++){
    if(listaTemperatura.elementAt(i)<temperaturaMinima){
      temperaturaMinima=listaTemperatura.elementAt(i);
    }
  }
  return temperaturaMinima;
}

double mediaTemperaturas(List<double> listaTemperatura){
  double suma =0;
  double media=0;
  for(int i=0; i<listaTemperatura.length; i++){
    suma=listaTemperatura.elementAt(i)+suma;
  }
  media=suma/listaTemperatura.length;

  return media; 
}

void main(List<String> args) {
  
List<double> listaTemperatura = [27,29,28,30];

double maxima = temperaturaMaxima(listaTemperatura);
double minima = temperaturaMinima(listaTemperatura);
double media = mediaTemperaturas(listaTemperatura);

print("la temperatura máxima es $maxima , la mínima es $minima y la media es $media");

}