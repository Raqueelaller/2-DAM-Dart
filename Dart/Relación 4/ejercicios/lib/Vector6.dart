import 'package:ejercicio4/Punto.dart';


class Vector {
late double x1, y1, z1; // Coordenadas del origen
late double x2, y2, z2; // Coordenadas del destino// Constructor
Vector(Punto punto1, Punto punto2){
  this.x1 = punto1.x;
  this.y1=punto1.y;
  this.z1=punto1.z;
  this.x2=punto2.x;
  this.y2=punto2.y;
  this.z2=punto2.z;
}
// Método para calcular el producto escalar
double productoEscalar(Vector otroVector) {
 return (x2 - x1) * (otroVector.x2 - otroVector.x1) +
 (y2 - y1) * (otroVector.y2 - otroVector.y1) +
 (z2 - z1) * (otroVector.z2 - otroVector.z1);
 }
// Método para multiplicar un vector por un escalar
Vector multiplicarPorEscalar(double escalar) {
   return Vector(
      Punto(x1, y1, z1),
      Punto(
        x1 + (x2 - x1) * escalar,
        y1 + (y2 - y1) * escalar,
        z1 + (z2 - z1) * escalar,
      ),
    );
 }
// Método para sumar dos vectores
Vector suma(Vector otroVector) {


 return Vector(
  Punto( x1, y1, z1),
  Punto(x2 + (otroVector.x2 - otroVector.x1), 
  y2 + (otroVector.y2 - otroVector.y1),
   z2 + (otroVector.z2 - otroVector.z1)), 
 );
 }
// Método para calcular el módulo del vector
double modulo() {
 return ((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1) + (z2 - z1) *
(z2 - z1));
}
}