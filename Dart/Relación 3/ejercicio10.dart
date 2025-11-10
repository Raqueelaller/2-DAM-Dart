/*10- Lo mismo con correos electrónicos
*/
bool esCorreoValid(String correo) {
  final RegExp regex = RegExp(r'([A-Za-z0-9]+)\@([A-Za-z]+)\.([A-Za-z]+)$');
  return regex.hasMatch(correo);
}
void main(List<String> args) {
  print(esCorreoValid('hola@gamil.com'));
}