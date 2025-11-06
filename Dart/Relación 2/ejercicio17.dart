// 17- Ídem con el ejercicio 9
import 'dart:io';

// Función recursiva para calcular el cociente de una división entera
int cociente(int numero1, int numero2) {
  if (numero1 < numero2) {
    return 0; 
  } else {
    return 1 + cociente(numero1 - numero2, numero2); 
  }
}

// Función recursiva para calcular el resto de una división entera
int resto(int numero1, int numero2) {
  if (numero1 < numero2) {
    return numero1; 
  } else {
    return resto(numero1 - numero2, numero2);
  }
}

void main() {
  print("Dime el primer número del que quieres saber el cociente y el resto: ");
  int numero1 = int.parse(stdin.readLineSync()!);

  print("Dime el segundo número: ");
  int numero2 = int.parse(stdin.readLineSync()!);

  if (numero2 == 0) {
    print("Error: no se puede dividir entre cero.");
    return;
  }

  int resultadoCociente = cociente(numero1, numero2);
  int resultadoResto = resto(numero1, numero2);

  print("El cociente de la división es: $resultadoCociente");
  print("El resto de la división es: $resultadoResto");
  print("Comprobación: $numero1 = $numero2 × $resultadoCociente + $resultadoResto");
}
