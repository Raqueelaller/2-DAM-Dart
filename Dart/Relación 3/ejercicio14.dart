/*Map<String,String> grupo Whatsapp = { ‘Pepe’: ‘111111111’,
‘María’:’222222222’,
’Ana’:’3333333’}
1. incluir persona
2. eliminar persona
3. buscar persona
4. mostrar componentes grupo
5. salir*/
import 'dart:io';
void main() {

  Map<String,String> grupoWhatsapp = { 'Pepe': '111111111','María':'222222222','Ana':'3333333'};

  int eleccion=0;

  do{
    print("1. incluir persona");
    print("2. eliminar persona");
    print("3. buscar persona");
    print("4. mostrar componentes grupo");
    print("5. salir");
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
  
    print("Dime el nombre del nuevo contacto: ");
    String nombre = stdin.readLineSync()!;
    print("Dime el nombre del nuevo contacto: ");
    String numero = stdin.readLineSync()!;
    if(esNumeroValido(numero)==true){
      Map<String,String> nuevoContacto = {nombre:numero};      
      grupoWhatsapp.addAll(nuevoContacto);
    }
    break;

    case 2:
  print("Dime el nombre del contacto a eliminar: ");
    String nombre = stdin.readLineSync()!;
    int contador=0;
    grupoWhatsapp.forEach((key,value){
      contador=contador+1;
      if(key==nombre){
        grupoWhatsapp.remove(key);
      }
    });
    break;
    
    case 3:
     print("Dime el nombre del contacto a buscar: ");
    String nombre = stdin.readLineSync()!;
    
    grupoWhatsapp.forEach((key,value){
      if(key==nombre){
        print(value);
      }
    });
    break;

    case 4:
    grupoWhatsapp.forEach((key,value){
      print("Nombre "+key+" Teléfono: "+value);
    });
    break;

    case 5:
    print("Adios!");

   }

  }while(eleccion!=5);

}

bool esNumeroValido(String numeroTelefono) {
  final RegExp regex = RegExp(r'[0-9]{9}');
  return regex.hasMatch(numeroTelefono);
}