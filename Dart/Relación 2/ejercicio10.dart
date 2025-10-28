/*10- Haz un programa que declare e inicialice un número entero positivo e invoque a una
función que lo convierta en binario y lo devuelva en forma de cadena (String) de ceros y
unos. El programa deberá mostrar el resultado por pantalla.
*/
import 'dart:io';
String binario(int numero){
String resultado="";
int dividendo=numero;
int divisor = 2;
int cociente = 0;
int resto=0;
do{
cociente=dividendo~/divisor;
resto=dividendo%divisor;
resultado=resto.toString()+resultado;
dividendo=cociente;
}while(dividendo!=0);
return resultado;
}
void main(){
 print("dime un número del que quieres saber su binario ");
int numero = int.parse(stdin.readLineSync()!);

print(binario(numero));
}


