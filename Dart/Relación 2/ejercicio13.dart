/* 13- Haz un pequeño programa Dart que defina la función esPrimo(int n), a la que invocará
pasándole un número entero positivo, y que devolverá un valor booleano tras buscarle
divisores al número: true si lo es, false si no lo es*/
import 'dart:io';

bool esPrimo(int numero){
  bool bandera=true;

  if(numero%2==0 || numero%3==0 || numero == 1){
    bandera=false;
  }
  if(numero==2 || numero==3){
    bandera=true;
  }

  return bandera;
}

void main(List<String> args) {
  print("dime un número para saber si es primo: ");
int numero = int.parse(stdin.readLineSync()!);

bool pregunta = esPrimo(numero);

print(pregunta);
}