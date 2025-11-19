import 'package:ejercicio4/Punto.dart';

class Vector{
  Punto inicio;
  Punto fin;

  Vector(this.inicio, this.fin);

  void desplazarteVerticalArriba(double numero){
    inicio.desplazarYArriba(numero);
    fin.desplazarYArriba(numero);
  }

  void desplazarteVerticalAbajo(double numero){
    inicio.desplazarYAbajo(numero);
    fin.desplazarYAbajo(numero);
  }

  void desplazarHorizontalDerecha(double numero){
    inicio.desplazarXDerecha(numero);
    fin.desplazarXDerecha(numero);
  }

  void desplazarHorizontalIzquierda(double numero){
    inicio.desplazarXIzquierda(numero);
    fin.desplazarXIzquierda(numero);
  }

  void desplazarCotaAdentro(double numero){
    inicio.desplazarZAdentro(numero);
    fin.desplazarZAdentro(numero);
  }

  void desplazarCotaAfuera(double numero){
    inicio.desplazarZAfuera(numero);
    fin.desplazarZAfuera(numero);
  }


  double productoEscalar(Punto a, Punto b){
    double producto = (a.x * b.x)+ (a.y*b.y)+ (a.z*b.z);
    return producto;
  }

  void sumarVectores(Vector a){
    inicio.x=(inicio.x+a.inicio.x);
    inicio.y=inicio.y+a.inicio.y;
    inicio.z=inicio.z+a.inicio.z;
  }



}