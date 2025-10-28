/*20- Haz un programa Dart que realice estadísticas sobre el tiempo. Declararás un Map que
contenga como claves los días de la semana y como valores las temperaturas máximas.
Calcula y muestra la mayor y la menor de las máximas, así como los días en que se
produjeron. Calcula también la media aritmética de las máximas.
*/
main() {
  Map<String, double> tiempo={
  "lunes":25.5,
  "martes":30,
  "miercoles":27.4,
  "jueves":30.5,
  "viernes":28,
  "sabado":29,
  "domingo":26
};
double maxima=0;
double minima=666;
String? diaMax;
String? diaMin;
double contadorTemperaturas=0;
double contadorDias = 0;
tiempo.forEach((dia,temperatura){
  if(temperatura>maxima){
    maxima=temperatura;
    diaMax=dia;
}
if (temperatura<minima){
  minima=temperatura;
  diaMin=dia;
}
contadorTemperaturas=contadorTemperaturas+temperatura;
contadorDias ++;
});
  print("la máxima es $maxima en el día $diaMax");
  print("la mínima es $minima en el dia $diaMin");

  double media=contadorTemperaturas/contadorDias;

  print("la media de temperaturas es: $media");
}




