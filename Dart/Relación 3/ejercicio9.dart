/*
Crea otra función que haga lo mismo con URL’s
*/

bool esURLValida(String url) {
  final RegExp regex = RegExp(r'^http([s]*):([A-Za-z0-9]+)\.([A-Za-z]+)$');
  return regex.hasMatch(url);
}
void main(List<String> args) {
  print(esURLValida('http:hola.com'));
}