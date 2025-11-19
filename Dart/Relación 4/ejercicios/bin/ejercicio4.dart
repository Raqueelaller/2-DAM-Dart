import 'package:ejercicio4/Punto.dart';
void main() {

  Punto punto1 = Punto(3.2,2,5.3);

  print(punto1.toString());

  punto1.desplazarXDerecha(3.5);
  punto1.desplazarYArriba(4.8);
  punto1.desplazarZAfuera(8.8);

  print(punto1.toString());


  
}
