/*20- Investiga qué son las funciones sin nombre y como se declaran y utilizan en Dart. Haz
un programa que pruebe cada uno de los siguientes tipos:
1. Función sin nombre asignada a una variable:
2. Función sin nombre dentro de una función de orden superior (como forEach)
3. Función con la sintaxis de flecha (=>) para funciones de una sola línea
4. Función como argumento de otra función
5. Función dentro de un map
*/
void main() {
  var saludar = (String nombre){
  print("Hola $nombre");
};

saludar("Jorge");

 
  
}
