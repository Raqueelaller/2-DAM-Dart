void main(){
  //declaraciones de variables

  String nombre="Raquel";
  int curso=2;
  double altura=1.78;
  bool matricula=true;
  dynamic algo=3;
      // en dart todo es un objeto, las funciones de las operatoria de
      //cada tipo son llamadas métodos. toUpperCase es un método
      // lenght es una propiedad
      // se utiliza la nomenclatura lowerCamelCase
      // para las clases se usan upperCamelCase
  print("mi nombre es $nombre, y en mayúscula ${nombre.toUpperCase()} y tiene ${nombre.length} letras");

}