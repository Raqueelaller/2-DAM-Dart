import 'package:ejercicio4/Fraccion.dart';
void main() {
  // Probando la clase Fraccion
  print('=== CLASE FRACCIÓN ===');
  final f1 = Fraccion(2, 4);
  final f2 = Fraccion(1, 3);
  
  print('f1: $f1');
  print('f2: $f2');
  
  print('Suma: ${f1.sumar(f2)}');
  print('Resta: ${f1.restar(f2)}');
  print('Multiplicación: ${f1.multiplicar(f2)}');
  print('División: ${f1.dividir(f2)}');
  
  f1.simplificar();
  print('f1 simplificada: $f1');
  print('MCD de f1: ${f1.mcd}');

  // Probando la clase FraccionComparable
  print('\n=== CLASE FRACCION COMPARABLE ===');
  final fc1 = FraccionComparable(1, 2);
  final fc2 = FraccionComparable(2, 4);
  final fc3 = FraccionComparable(3, 4);
  
  print('fc1: $fc1');
  print('fc2: $fc2');
  print('fc3: $fc3');
  
  print('fc1 es mayor que fc3: ${fc1.esMayorQue(fc3)}');
  print('fc1 es menor que fc3: ${fc1.esMenorQue(fc3)}');
  print('fc1 es igual a fc2: ${fc1.esIgualA(fc2)}');
  print('fc1 es mayor o igual que fc2: ${fc1.esMayorOIgualQue(fc2)}');
  print('fc1 es menor o igual que fc3: ${fc1.esMenorOIgualQue(fc3)}');
  print('fc1 es distinto que fc3: ${fc1.esDistintoQue(fc3)}');
}