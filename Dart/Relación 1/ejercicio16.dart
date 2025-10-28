void main() {
  List<String> listaDia = ["lunes","martes","miércoles","jueves","viernes"];
  listaDia.add("sabado");
  listaDia.add("domingo");

  listaDia.forEach((dia){
    print(dia);
  });
  Map<String,int> personas ={
    "raquel":25,
    "paula":26,
    "alba":25,
    "jorge":23
  };
  print("");
  personas.forEach((nombre,edad){
    print("El nombre es: $nombre y su edad: $edad");
  });

}