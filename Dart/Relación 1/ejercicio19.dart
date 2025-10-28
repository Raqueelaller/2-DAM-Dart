/*19- Haz un programa Dart que declare un Map con nombres y edades, y lo recorra
mostrando todo (clave-valor), que lo recorra mostrando solo las claves, y también, aparte,
mostrando solo los valores. ¿Qué pasaría si sabemos que alguna de las edades no están
inicializadas?
*/

main() {
Map<String,int> personas ={
    "raquel":25,
    "paula":26,
    "alba":25,
    "jorge":23
  };
  print("nombre y edades");
  personas.forEach((nombre,edad){
    print("El nombre es: $nombre y su edad: $edad");
  });

  print("solo nombre");
  personas.forEach((nombre, edad){
    print("el nombre es $nombre");
  });

  print("Solo edad");
  personas.forEach((nombre, edad){
    print("la edad es $edad");
  });


}
