import 'dart:io';
import 'package:examen_2025/examen_2025.dart';
void main() {

  try { // realizamos un try catch para manejar que no introduzcan cadenas vacías o nulas
    print('Introduce una palabra: ');
    String? palabra1 = stdin.readLineSync();
  print('Introduce otra palabra: ');
    String? palabra2 = stdin.readLineSync();
    if (palabra1 == null || palabra1.trim().isEmpty || palabra2==null || palabra2.trim().isEmpty) {
      print('No se introdujo ninguna frase.');
      return;
    }

  print(distanciaHamming(palabra1,palabra2));

  print(distanciaHamming(palabra1,palabra2,false));
 
    
  } catch (e) {
    print('Ocurrió un error: $e');
  }
  
}