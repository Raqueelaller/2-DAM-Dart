/*
8- Vamos por fin a trabajar la validación de strings. Investiga cómo se definen las
expresiones regulares en Dart y construye una función que devuelva true si el string que
se le pase como parámetro hace match con la expresión regular de un color codificado en
RGB
*/
bool esColorRGBValido(String color) {
  final RegExp regex = RegExp(r'^#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{6})$');
  return regex.hasMatch(color);
}

void main() {

 print(esColorRGBValido('#4F6'));
 print(esColorRGBValido('color'));
}