class Persona{
  String nombre;
  int edad;
  double altura;

  Persona(this.nombre,this.edad,this.altura);

  void personaDescripcion(){
    print("Mi nombre es ${this.nombre} . Tengo ${this.edad} años, tengo ${this.altura} metros de altura.");
  }

  String toString(){
     String mensaje = "edad: ${this.nombre}, edad: ${this.edad}, altura: ${this.altura}";
     return mensaje;
  }
}

void main() {
  
  Persona paula = new Persona("Paula", 26, 1.51);
  Persona alba = new Persona("Alba",25,1.53);

  paula.personaDescripcion();
  print(alba.toString());

}