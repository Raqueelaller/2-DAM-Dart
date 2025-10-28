/*3- Vamos a hacer un pequeño programa Dart con una función que muestre el nombre y el id
de un empleado que se les pasa como parámetros, pero sabiendo que, tanto uno como otro
podrían no saberse, en cuyo caso, se mostrará el nombre ‘desconocido’ y/o el id 999, que
serán una suerte de valores por defecto. (Función con parámetros opcionales, y sin
devolución de valor de retorno)
*/
import 'dart:io';
void main() {
  
  String? nombre=null;
  int? id=null;
  mostrar(nombre, id);
  mostrar("raquel", 1);

}

void mostrar(String? nombre, int? id){
  if (nombre==null){
    nombre="desconocido";
  }
  if (id==null){
    id=999;
  }
print("el nombre es $nombre y su id es $id");

}



