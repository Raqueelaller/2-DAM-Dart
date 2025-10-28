import 'dart:io';

void main(){
print("dime el primer número del que quieres saber el MCD: ");
int numero1 = int.parse(stdin.readLineSync()!);
print("dime el segundo número del que quieres saber el MCD: ");
int numero2 = int.parse(stdin.readLineSync()!);



if(numero1 > numero2){
  while(numero2!=0){
   int resto=numero1%numero2;
   numero1=numero2;
   numero2=resto;
  }
  print("el mcd es: $numero1");
}else{
  while(numero1!=0){
    int resto=numero2%numero1;
    numero2=numero1;
    numero1=resto;
  }
  print("el MCD es: $numero2");
}


}