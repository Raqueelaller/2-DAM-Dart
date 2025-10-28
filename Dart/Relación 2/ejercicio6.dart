/*6- Haz un programa en Dart que contenga una función que calcule la suma de los n
primeros números naturales. La función tendrá un parámetro n y devolverá el valor de la
suma al punto de la llamada
*/
import 'dart:core';
import 'dart:io';
int suma_numeros_naturales(int n){
int contador = 0;
 for(int i=1; i<n+1;i++){
  contador=contador+i;
 }
 return contador;
}

void main(){

print("dime el número para saber la suma hasta ese número");
int numero = int.parse(stdin.readLineSync()!);

print(suma_numeros_naturales(numero));

}


