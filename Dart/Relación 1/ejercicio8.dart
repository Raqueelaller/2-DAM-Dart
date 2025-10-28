/* 8- Haz un programa en Dart que muestre la tabla de multiplicar de un número entero (entre
1 y 10) que se introducirá por consola. Investiga la función stdin.readLineSync() para
realizar entrada de datos desde consola. ¿Qué ocurre con el sistema “sound type”?.
Soluciónalo utilizando un tipo nullable. Testea la entrada sometiéndola a distintas pruebas
de datos de entrada.
*/
import 'dart:io';

void main() {
  print('Introduce un número entre 1 y 10 para mostrar su tabla de multiplicar:');

  // Leer la entrada como String? (nullable)
  String? input = stdin.readLineSync();

  // Verificar que no sea null antes de convertir
  if (input != null) {
    int? numero = int.tryParse(input); // tryParse devuelve null si no es número

    if (numero != null && numero >= 1 && numero <= 10) {
      print('Tabla del $numero:');
      for (int i = 1; i <= 10; i++) {
        print('$numero x $i = ${numero * i}');
      }
    } else {
      print('Número fuera de rango o entrada inválida. Debe ser un número del 1 al 10.');
    }
  } else {
    print('No se recibió ninguna entrada.');
  }
}

