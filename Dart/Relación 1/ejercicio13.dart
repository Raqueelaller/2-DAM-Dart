import 'dart:io';

void main(){
print("dime el primer número del que quieres saber el MCD: ");
int numero1 = int.parse(stdin.readLineSync()!);
print("dime el segundo número del que quieres saber el MCD: ");
int numero2 = int.parse(stdin.readLineSync()!);

int cociente= numero1~/numero2;
int resto=numero1%numero2;

print("El cociente de la división es: $cociente");
print("El resto de la división es: $resto");

print("Comprobación: $numero1 = $numero2 × $cociente + $resto");
}