/*19- Haz lo mismo en otro programa con una función que genere una lista de todos los
números primos que hay entre 1 y n, siendo n un valor entero declarado e inicializado en el
programa. Ten en cuenta que puedes reutilizar la función esPrimo ya trabajada en el
ejercicio 13*/

bool esPrimo(int numero) {
  bool bandera = true;

  if (numero % 2 == 0 || numero % 3 == 0 || numero == 1)  {
    bandera = false;
  }
  if (numero == 2 || numero == 3) {
    bandera = true;
  }

  return bandera;
}

// Función que genera una lista con todos los números primos entre 1 y n
List<int> generarPrimosHasta(int n) {
  List<int> listaPrimos = [];

  for (int i = 1; i <= n; i++) {
    if (esPrimo(i)) {
      listaPrimos.add(i);
    }
  }

  return listaPrimos;
}

void main() {
  
  List<int> primos = generarPrimosHasta(20);

  print("Los números primos entre 1 y 20 son:");
  print(primos);
}
