/* 15- Lo mismo con el ejercicio 7*/
import 'dart:core';
import 'dart:io';
int factorial_numeros_naturales(int n){
 if (n==0){
  return 1;
 }else{
  return n*factorial_numeros_naturales(n-1);
 }
 
}

void main(){

print("dime el número para saber el factorial hasta ese número");
int numero = int.parse(stdin.readLineSync()!);

print(factorial_numeros_naturales(numero));

}


