import 'dart:io';

void main(){
  print("dime el primer lado");
  double? lado1= double.parse(stdin.readLineSync()!);
  print("Dime el segundo lado");
  double? lado2= double.parse(stdin.readLineSync()!) ;
  print("dime el tercer lado");
  double? lado3= double.parse(stdin.readLineSync()!);

  

  if( lado1==lado2 && lado1==lado3){
    print("es equilátero");
  }
  else if (lado1==lado2 || lado1==lado3 || lado2==lado3) {
    print("Es isóceles");
  }else{
    print("es escaleno");
  }
}