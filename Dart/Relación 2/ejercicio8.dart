/*8- Haz en Dart el programa que invoca a una función que calcula el MCD de dos números
enteros positivos utilizando el algoritmo de Euclides. Los dos números serán parámetros de
entrada, y la función devolverá el resultado al punto de la llamada. Ambos números serán
inicializados en el propio programa.
*/
import 'dart:io';
int euclides (int numero1, int numero2){
  int numeroMayor = 0;
  if(numero1 > numero2){
  while(numero2!=0){
   int resto=numero1%numero2;
   numero1=numero2;
   numero2=resto;
  }
  numeroMayor=numero1;
}else{
  while(numero1!=0){
    int resto=numero2%numero1;
    numero2=numero1;
    numero1=resto;
  }
  numeroMayor=numero2;
}
return numeroMayor;
}
void main(){
print("dime el primer número del que quieres saber el MCD: ");
int numero1 = int.parse(stdin.readLineSync()!);
print("dime el segundo número del que quieres saber el MCD: ");
int numero2 = int.parse(stdin.readLineSync()!);

print(euclides(numero1,numero2));
}