/* 7- Haz el pequeño programa en Dart que calcule el factorial de un número n inicializado a
un valor entero y positivo. La función tendrá a n como parámetro de entrada y devolverá el
valor de la suma al punto de la llamada
*/
import 'dart:core';
import 'dart:io';
int factorial_numeros_naturales(int n){
int contador = 1;
 for(int i=1; i<n+1;i++){
  contador=contador*i;
 }
 return contador;
}

void main(){

print("dime el número para saber el factorial hasta ese número");
int numero = int.parse(stdin.readLineSync()!);

print(factorial_numeros_naturales(numero));

}