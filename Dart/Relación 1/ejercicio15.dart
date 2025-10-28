import 'dart:math';

void main() {

  int contador1=0;
  int contador2=0;
  int contador3=0;
  int contador4=0;
  int contador5=0;
  int contador6=0;


  print("lanzando dado...");

  for(int i=0; i<100; i++){
    var numero = Random().nextInt(8)+1;
    if (numero == 1){
      contador1 ++;
      print("en el lanzamiento $i ha salido el número 1");
    }else if (numero==2){
      contador2 ++;
      print("en el lanzamiento $i ha salido el número 2");
    }else if(numero == 3){
      print("en el lanzamiento $i ha salido el número 3");
      contador3 ++;
    }else if(numero == 4){
      print("en el lanzamiento $i ha salido el número 4");
      contador4 ++;
    }else if(numero == 5){
      print("en el lanzamiento $i ha salido el número 5");
      contador5 ++;
    }else if(numero == 6){
      print("en el lanzamiento $i ha salido el número 6");
      contador6 ++;
    }else if(numero == 7){
      print("en el lanzamiento $i ha salido el número 6");
      contador6 ++;
    }else if(numero == 8){
      print("en el lanzamiento $i ha salido el número 6");
      contador6 ++;
    }

  }
  
  print("el 1 ha salido $contador1");
  print("el 2 ha salido $contador2");
  print("el 3 ha salido $contador3");
  print("el 4 ha salido $contador4");
  print("el 5 ha salido $contador5");
  print("el 6 ha salido $contador6");
 
}