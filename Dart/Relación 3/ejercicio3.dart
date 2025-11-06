/*3- Vamos a declarar en un programa Dart un String al que inicializamos con una frase.
Examinaremos el contenido del String para saber si está todo en mayúsculas, en
minúsculas o ni lo uno ni lo otro. ( toUpperCase() y toLowerCase() ). Investigaremos y
probaremos también cómo se crea un string multilínea.
*/
import 'dart:io';
void mayusculaOminuscula(String frase1, String frase2){
  if (frase1.toLowerCase()==frase2){
    print("la frase está entera en miníscula");
  }else if(frase1.toUpperCase()==frase2){
    print("la frase entera está en mayúscula");
  }else if(frase1==frase2){
    print("la frase es mixta");
  }else if(frase1.toLowerCase()!=frase2.toLowerCase()){
    print("NO ES LA MISMA FRASE :(");
  }
}

void main() {
  print("Vamos a jugar a un juego, voy a advinar a raíz de dos frases si la segunda que metes está en mayúscula o mnúscula o mixta");
  print("dim una frase");
  String frase1 = stdin.readLineSync()!;
  print("dime la misma frase de otra forma");
  String frase2 = stdin.readLineSync()!;

  mayusculaOminuscula(frase1, frase2);
}
