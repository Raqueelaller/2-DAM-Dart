/*5- Para el caso inverso anterior, utilizaremos la función parse(): a partir de una serie de
Strings que representan en formato cadena datos de tipo int, double, etc… convertiremos
y asignaremos su contenido a variables de cada uno de estos tipos. ¿Qué ocurre con List,
Map, Enum, Set…? ¿Cómo deben convertirse en String?
*/

String tnumero="1";
String tdecimal="1.1";
String tbuleano="true";
int numero = int.parse(tnumero);
double decimal = double.parse(tdecimal);
bool buleano= bool.parse(tbuleano);

List<String> numeritos = ['1','2','3'];

List<int> numeros = numeritos.map((n)=>int.parse(n)).toList();

Map<String, String> mapaTexto = {
  '1': '10',
  '2': '20',
  '3': '30'
};

// Creamos un nuevo mapa con claves y valores convertidos
Map<int, int> mapaNumeros = mapaTexto.map(
  (clave, valor) => MapEntry(int.parse(clave), int.parse(valor)),
);

