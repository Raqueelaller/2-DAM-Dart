enum Orientacion{
  horizontal,
  vertical,
}

class BanderaFranja{

  Orientacion orientacion;
  List<String> colores;
  String? pais;

  BanderaFranja(this.orientacion,this.colores,this.pais);

  String toString(){
    String mensaje;
    if(this.pais!=null){
      mensaje = "Pais: ${this.pais}, Colores ${this.colores}, Orientación: ${this.orientacion.name}";
    }else{
      mensaje = "Colores ${this.colores}, Orientación: ${this.orientacion.name}";
    }
   return mensaje; 
  }

  bool listasIguales(List<String> otra){
    bool veracidad=true;

    if(colores.length == otra.length){
      for(int i = 0; i<colores.length; i++){
        if(colores.elementAt(i)!=otra.elementAt(i)){
          veracidad=false;
        }
      }

    }else{
      veracidad=false;
    }

    return veracidad;

  }


 bool sonIguales(BanderaFranja otra){
  bool veracidad;

  if(orientacion.name==otra.orientacion.name && listasIguales(otra.colores)==true ){
    veracidad=true;
  }else{
    veracidad=false;
  }
  return veracidad;
 }

 bool casiIguales(BanderaFranja otra){
  bool veracidad;

  if(orientacion.name!=otra.orientacion.name && listasIguales(otra.colores)==true){
    veracidad=true;
  }else{
    veracidad=false;
  }
  return veracidad;

 }

 void invertirBandera(){
  List<String> coloresReves=[];
  coloresReves.addAll(this.colores.reversed);
  this.colores=coloresReves;
 }

 void invertirOrientacion(){
  if(orientacion==Orientacion.horizontal){
    this.orientacion=Orientacion.vertical;
  }else{
    this.orientacion=Orientacion.horizontal;
  }
 }
   
}

void main() {

  BanderaFranja espanya = new BanderaFranja(Orientacion.horizontal,["rojo","amarillo","rojo"],"España");

  BanderaFranja francia = new BanderaFranja(Orientacion.vertical, ["rojo","amarillo","rojo"], "Francia");
  

  print(espanya.toString());

  francia.invertirOrientacion();
  francia.invertirBandera();

  print(francia.toString());
  print("son iguales?");
  print(francia.sonIguales(espanya));
 
  print("invirtiendo orientación a francia");
  francia.invertirOrientacion();
    print(francia.toString());
    print(espanya.toString());


  print("son casi iguales?");
  print(francia.casiIguales(espanya));
  print("son iguales?");
  print(francia.sonIguales(espanya));
}
