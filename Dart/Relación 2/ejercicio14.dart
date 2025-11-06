/*14- Haz una nueva versión del ejercicio 6, esta vez con una función RECURSIVA
*/
import 'dart:core';
import 'dart:io';
int suma_numeros_naturales(int n){
if (n == 0){
  return 0;
}else{
  return n + suma_numeros_naturales(n-1);
}
}

void main(){

print("dime el número para saber la suma hasta ese número");
int numero = int.parse(stdin.readLineSync()!);

print(suma_numeros_naturales(numero));

}


