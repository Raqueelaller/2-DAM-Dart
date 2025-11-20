/*1- Se denomina “distancia Hamming” de dos cadenas de igual longitud al número de caracteres diferentes que tienen.
Por ejemplo, la distancia Hamming de “Carmen” y “Carmel” es 1.
Por otra parte, es importante saber si esta distancia debe calcularse mediante una comparación case-sensitive o case-insensitive.
 En el segundo caso, la distancia entre “Carmen” y “CARMEN” sería 0, y en el primer caso, sería 5.
Haz una función denominada distanciaHamming que reciba tres parámetros. Los dos primeros se llamarán stringA y stringB y 
serán las cadenas a comparar. El tercero, será un booleano, caseSensitive, que será un parámetro opcional y valdrá por defecto 
true. La función deberá comparar la longitud de ambas cadenas, y si no fuera igual esa longitud, devolverá el valor -1.*/

int distanciaHamming(String cadena1, String cadena2, [bool? caseSensitive=true]){
  int contador=0;
  cadena1=cadena1.trim(); // quitamos espacios que tenga la cadena de texto en caso que lo tenga para que solo queden las letras
  cadena2=cadena2.trim();
  if(cadena1.length!=cadena2.length){
    contador=-1;
    print("no pueden ser longitudes diferentes");

  }else{
    if(caseSensitive==true){
      
      List<String> palabras1 = cadena1.split(''); // separamos la palabra en letras y la añadimos a una lista para que posteriormente nos sea mas fácil contar las letras 
      List<String> palabras2 = cadena2.split('');

      for(int i=0; i<palabras1.length;i++){
        if(palabras1.elementAt(i)!=palabras2.elementAt(i)){ // si los caracteres son iguales implementa el contador
          contador=contador+1;
        }
      }

    }else{
      cadena1=cadena1.toLowerCase(); // ponemos las dos cadenas en minúscula
      cadena2=cadena2.toLowerCase();
      List<String> palabras1 = cadena1.split('');
      List<String> palabras2 = cadena2.split('');

      for(int i=0; i<palabras1.length;i++){
        if(palabras1.elementAt(i)!=palabras2.elementAt(i)){
          contador=contador+1;
        }
    }
  }

}

return contador;
}

bool esSublista(List<int> lista, List<int>subLista){
  bool bandera=false;
  if(lista.length>subLista.length){
    for(int i=0; i<lista.length;i++){
      if(lista.elementAt(i)==subLista.elementAt(0)){
        for(int j=0; j<subLista.length; j++){
            if(lista.elementAt(i)==subLista.elementAt(j)){
              bandera=true;
            }else{
              bandera=false;
            }
        }

      }

    }
  }
  return bandera;
}
