/*
2- Haz un programa Dart “adivina un número entre 1 y 100”. El programa deberá extraer un
número al azar, ir pidiendo al usuario exterior que lo adivine, y darle pistas (“te pasaste”, “te
quedaste corto”), hasta que lo acierte. En ese momento, mostrará una felicitación, así como
el número de intentos que te ha costado acertar
*/
import 'dart:io';
import 'dart:math';

//esta función genera un número aleatorio, le pide al usuario un número hasta que acierte
void adivinaNumero(int numero){
  int contador = 0;
  var random = Random();
  int numeroAleatorio = random.nextInt(100) + 1;
  bool entradaValida = false;
  
    if(numeroAleatorio==numero){
      print("lo has acertado a la primera!!!!");
    }else{
     do{

    contador=contador+1;
    if(numero>numeroAleatorio){
      print("te has pasado!! el número es mas bajo, prueba de nuevo");
      entradaValida = false;
        while(!entradaValida){
    try{
      numero = int.parse(stdin.readLineSync()!);
      entradaValida=true;
    }catch(e){
      print('Valor introducido no válido, error: $e');
      print("dime un número de nuevo");
    }
    }}
    else{
      print("te has quedado corta... el número es mas elevado!!! prueba de nuevo");
      entradaValida = false;
        while(!entradaValida){
    try{
      numero = int.parse(stdin.readLineSync()!);
      entradaValida=true;
    }catch(e){
      print('Valor introducido no válido, error: $e');
      print("dime un número de nuevo");
    }
    }}
  }while(numero != numeroAleatorio);
  print('Enhorabuena, has acertado!! lo has intentado $contador veces');
  }
  
 
}
void main() {
  print("dime el número para saber si es el número aleatorio");
  bool entradaValida=false;
  int numero=0;
  while(!entradaValida){
    try{
      numero = int.parse(stdin.readLineSync()!);
      entradaValida=true;
    }catch(e){
      print('Valor introducido no válido, error: $e');
      print("dime un número de nuevo");
    }
  
  }

  adivinaNumero(numero);

}