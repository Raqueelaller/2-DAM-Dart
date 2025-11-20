/*20- Investiga qué son las funciones sin nombre y como se declaran y utilizan en Dart. Haz
un programa que pruebe cada uno de los siguientes tipos:
1. Función sin nombre asignada a una variable:
2. Función sin nombre dentro de una función de orden superior (como forEach)
3. Función con la sintaxis de flecha (=>) para funciones de una sola línea
4. Función como argumento de otra función
5. Función dentro de un map
*/void saludito (String nombre){
  print("holita $nombre");
}
void main() {
  var saludar = (String nombre){
   print("Hola $nombre");
 };

 saludar("Jorge");


  List<String> nombres = ["Raquel","Chus","Eli"];

//  nombres.forEach((nombre){
//   print("hola $nombre");
//  });

//  var sumar = (int a, int b) => a+b;
//   print(sumar(5,6));


//   void procesarSaludo(void Function(String) funcionSaludo) {
//   print("=== Iniciando proceso ===");
//   funcionSaludo("jorge");  // Ejecuta la función recibida
//   print("=== Proceso completado ===");
// }

//   procesarSaludo(saludar);

   var nombresMayuscula = nombres.map((nombre) {
    return nombre.toUpperCase();
  }).toList();
  
  print(nombresMayuscula);

  
}
