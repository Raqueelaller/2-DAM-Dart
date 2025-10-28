/* 9- Haz en Dart el programa que invoca a dos funciones, una que calcula el cociente de la
división entre dos números enteros positivos utilizando el algoritmo de Euclides y la otra que
calcula el resto. Los dos números serán parámetros de entrada, y la función devolverá el
resultado al punto de la llamada. Ambos números serán inicializados en el propio programa*/
import 'dart:io';
int cociente (int numero1, int numero2){
  int resultado= numero1~/numero2;

  return resultado;
}

int resto (int numero1, int numero2){
  int resto=numero1%numero2;
  return resto;
}
void main(){

  print("dime el primer número del que quieres saber el MCD: ");
int numero1 = int.parse(stdin.readLineSync()!);
print("dime el segundo número del que quieres saber el MCD: ");
int numero2 = int.parse(stdin.readLineSync()!);
int resultadoCociente = cociente(numero1, numero2);
int rultadoResto = resto(numero1, numero2);
print("El cociente de la división es: $resultadoCociente");
print("El resto de la división es: $rultadoResto");

print("Comprobación: $numero1 = $numero2 × $resultadoCociente + $rultadoResto");
}
