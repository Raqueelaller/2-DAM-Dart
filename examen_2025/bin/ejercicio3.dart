import 'package:examen_2025/Pila.dart';
void main() {
  print("hola");
  
//1. Crea una pila de tamaño 10
Pila pilita=Pila(10);

print("adios");
//2. Inserta un 5 en la pila (y controla que pueda ser null)
try{
  pilita.push(5);
}catch(e){
  print(e);
}
//3. Inserta un 3 en la pila (y controla que pueda ser null)
try{
  pilita.push(3);
}catch(e){
  print(e);
}
//4. Muestra el tamaño de la pila
pilita.getPila();
//5. Extrae un elemento de la pila (y controla que pueda ser null)
pilita.pop();
//6. Muestra el tamaño de la pila
pilita.getPila();
//7. Muestra la pila completa
pilita.getPila();

}