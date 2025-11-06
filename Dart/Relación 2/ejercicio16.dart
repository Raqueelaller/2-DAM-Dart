// 16- Ídem con el ejercicio 8
import 'dart:io';

// Función recursiva para calcular el MCD usando el algoritmo de Euclides
int euclides(int numero1, int numero2) {
  if (numero2 == 0) {
    return numero1; 
  } else {
    return euclides(numero2, numero1 % numero2); 
  }
}

void main() {
  print("Dime el primer número del que quieres saber el MCD: ");
  int numero1 = int.parse(stdin.readLineSync()!);

  print("Dime el segundo número del que quieres saber el MCD: ");
  int numero2 = int.parse(stdin.readLineSync()!);

  int resultado = euclides(numero1, numero2);
  print("El MCD de $numero1 y $numero2 es: $resultado");
}
