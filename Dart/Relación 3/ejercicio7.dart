/*7- Haz un pequeño programa en Dart al que le introduzcas una frase y una subcadena.
Buscará si está contenida en la frase, y en qué posición la encuentra por primera y última
vez
*/
import 'dart:io';

void buscarFrase(String frase, String palabra){
  frase=frase.trim();
  List<String> lista = frase.split(' ');
  List<int> listita=[];
  int posicionFinal=0;
  int posicionInicial=0;
  for(int i=0; i<lista.length; i ++){
    if(lista.elementAt(i)==palabra){
      listita.add(i);
      posicionFinal=i;
    }
  }
  posicionInicial=listita.elementAt(0)+1;
  if(posicionFinal==0){
    print("no se ha encontrado dicha palabra");
  }else{
    posicionFinal=posicionFinal+1;
    print('se ha encontrado $palabra por primera vez en la posición $posicionInicial y por última vez en la posición $posicionFinal');
  }
}

void main() {
   try {
    print('Introduce una frase: ');
    String? frase = stdin.readLineSync();

    if (frase == null || frase.trim().isEmpty) {
      print('No se introdujo ninguna frase.');
      return;
    }
     print('Introduce una palabra para saber si está en la frase: ');
    String? palabra = stdin.readLineSync();

    if (palabra == null || palabra.trim().isEmpty) {
      print('No se introdujo ninguna frase.');
      return;
    }

    buscarFrase(frase, palabra);
  
}catch(e){
  print('ocurrió un error $e');
}
}