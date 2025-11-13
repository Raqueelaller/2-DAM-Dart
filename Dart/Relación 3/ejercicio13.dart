/*List<String> colores = [‘rojo’,’verde’,’azul’];
A partir de ahí, muestre el siguiente menú de operaciones:
1. incluir color
2. eliminar color
3. buscar color
4. mostrar lista de colores
5. salir
El usuario entrará en un bucle del que se sale pulsando la opción 5. En cualquier otro caso,
efectuará la operación elegida. */
import 'dart:io';
void main(List<String> args) {
List<String> colores = ['rojo', 'verde', 'azul'];
int eleccion=0;
do{

  print("¿qué deseas hacer?");
  print("1.incluir color");
  print("2.eliminar color");
  print("3.buscar color");
  print("4.mostrar lista de colores");
  print("5.salir");
  print("Dime la elección");
  print("dime el número para saber si es el número aleatorio");
  bool entradaValida=false;
  while(!entradaValida){
    try{
      eleccion = int.parse(stdin.readLineSync()!);
      entradaValida=true;
    }catch(e){
      print('Valor introducido no válido, error: $e');
      print("dime un número de nuevo");
    }
  }

  switch(eleccion){

    case 1:
     print('Introduce un color: ');
    String color = stdin.readLineSync()!;
    colores.add(color);
    break;
    case 2:
     print('Introduce un color que quieras eliminar: ');
    String color = stdin.readLineSync()!;
    int numero = colores.indexOf(color);
    if(numero>=0){
      colores.removeAt(numero);
    }else{
      print("no existe ese color en la lista");
    }
    break;
    case 3:
    print('Introduce un color que quieras eliminar: ');
    String color = stdin.readLineSync()!;
    int numero = colores.indexOf(color);
    if(numero>=0){
      print("el color está en la lista");
    }else{
      print("no está el color en la lista");
    }
    break;
    case 4:
    for(int i=0;i<colores.length;i ++){
      print(colores.elementAt(i));
    }
   
    break;
    case 5:
    print("Adios!");

  }
}while(eleccion != 5);
  
}

