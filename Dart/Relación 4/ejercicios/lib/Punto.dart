class Punto{
  double x;
  double y;
  double z;

  Punto(this.x,this.y,this.z);

  void desplazarXDerecha(double nuevaX){
    x=x+nuevaX;
  }

    void desplazarXIzquierda(double nuevaX){
    x=x-nuevaX;
  }

  void desplazarYArriba(double nuevaY){
    y=y+nuevaY;
  }

  void desplazarYAbajo(double nuevaY){
    y=y-nuevaY;
  }
  void desplazarZAdentro(double nuevaZ){
    z=z-nuevaZ;
  }

    void desplazarZAfuera(double nuevaZ){
    z=z+nuevaZ;
  }

  @override
  String toString(){
    String mensaje = "($x, $y, $z)";
    return mensaje;
  }

  
}
