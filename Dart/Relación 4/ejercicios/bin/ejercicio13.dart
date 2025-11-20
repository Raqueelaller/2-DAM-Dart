import 'package:ejercicio4/Fraccion.dart';
import 'package:ejercicio4/mixim.dart';

void main() {
 // Para fracciones normales (sin comparación)
  final fraccionNormal = Fraccion(1, 2);
  
  // Para fracciones con métodos de comparación
  final fraccionComparable1 = FraccionComparable(1, 2);
  final fraccionComparable2 = FraccionComparable(3, 4);
  
  // ✅ Esto funciona
  print(fraccionComparable1.esMayorQue(fraccionComparable2));
  
  // ❌ Esto da error (como esperábamos)
  // print(fraccionNormal.esMayorQue(fraccionComparable1));
}
