/*12- Soluciona el problema anterior mediante la declaración de un Map y haciendo que cada
función, en lugar de devolver valores, muestran los resultados por pantalla ellas mismas*/
import 'dart:io';
void temperaturaMaxima(Map<String,double> listaTemperatura){
  double maxima=0;
  String? diaMaxima;
  listaTemperatura.forEach((dia,temperatura){
    if(temperatura>maxima){
      maxima=temperatura;
      diaMaxima=dia;
    }
  });

  print("la temperatura máxima es $maxima en el día $diaMaxima");
}

void temperaturaMinima(Map<String,double> listaTemperatura){
  double minima=999;
  String? diaMinima;
  listaTemperatura.forEach((dia,temperatura){
    if(temperatura<minima){
      minima=temperatura;
      diaMinima=dia;
    }
  });

  print("la temperatura mínima es $minima en el día $diaMinima");
}

void mediaTemperaturas(Map<String,double> listaTemperatura){
  double suma =0;
  double contador = 0;
  double media=0;
   listaTemperatura.forEach((dia,temperatura){
    suma=suma+temperatura;
    contador=contador+1;
   });

   media = suma/contador;

  print("La media es $media");
}

void main(List<String> args) {
  
Map<String,double> listaTemperatura = {
  "lunes":25.5,
  "martes":30,
  "miercoles":27.4,
  "jueves":30.5,
  "viernes":28,
  "sabado":29,
  "domingo":26
};

temperaturaMaxima(listaTemperatura);
temperaturaMinima(listaTemperatura);
mediaTemperaturas(listaTemperatura);


}