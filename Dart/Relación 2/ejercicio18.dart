/*18- Haz un programa Dart que declare una lista, y la inicializa con los valores devueltos por
una función que devuelva los números de la serie de Fibonacci hasta llegar al término
n-ésimo, siendo n un valor entero declarado e inicializado al principio del programa*/
// Programa: Serie de Fibonacci hasta el término n-ésimo
void main() {
  int n = 10;

  
  List<int> fibonacciList = generarFibonacci(n);

  
  print('Los primeros $n términos de la serie de Fibonacci son:');
  print(fibonacciList);
}

// Función que genera una lista con los primeros n números de Fibonacci
List<int> generarFibonacci(int n) {
  List<int> serie = [];

  if (n <= 0) {
    return serie;
  } else if (n == 1) {
    serie.add(0);
    return serie;
  }

  
  serie.addAll([0, 1]);

  
  for (int i = 2; i < n; i++) {
    int siguiente = serie[i - 1] + serie[i - 2];
    serie.add(siguiente);
  }

  return serie;
}



