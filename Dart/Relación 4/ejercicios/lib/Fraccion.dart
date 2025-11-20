class Fraccion {
  int numerador;
  int denominador;

  // Constructor
  Fraccion(this.numerador, this.denominador) {
    if (denominador == 0) {
      throw ArgumentError("El denominador no puede ser cero");
    }
  }

  // Método para calcular el máximo común divisor (MCD)
  int _mcd(int a, int b) {
    while (b != 0) {
      final temp = b;
      b = a % b;
      a = temp;
    }
    return a.abs();
  }

  // Método para simplificar la fracción
  void simplificar() {
    final mcd = _mcd(numerador, denominador);
    numerador ~/= mcd;
    denominador ~/= mcd;
    
    // Asegurar que el signo esté en el numerador
    if (denominador < 0) {
      numerador = -numerador;
      denominador = -denominador;
    }
  }

  // Sumar fracciones
  Fraccion sumar(Fraccion otra) {
    final nuevoNumerador = numerador * otra.denominador + otra.numerador * denominador;
    final nuevoDenominador = denominador * otra.denominador;
    final resultado = Fraccion(nuevoNumerador, nuevoDenominador);
    resultado.simplificar();
    return resultado;
  }

  // Restar fracciones
  Fraccion restar(Fraccion otra) {
    final nuevoNumerador = numerador * otra.denominador - otra.numerador * denominador;
    final nuevoDenominador = denominador * otra.denominador;
    final resultado = Fraccion(nuevoNumerador, nuevoDenominador);
    resultado.simplificar();
    return resultado;
  }

  // Multiplicar fracciones
  Fraccion multiplicar(Fraccion otra) {
    final nuevoNumerador = numerador * otra.numerador;
    final nuevoDenominador = denominador * otra.denominador;
    final resultado = Fraccion(nuevoNumerador, nuevoDenominador);
    resultado.simplificar();
    return resultado;
  }

  // Dividir fracciones
  Fraccion dividir(Fraccion otra) {
    if (otra.numerador == 0) {
      throw ArgumentError("No se puede dividir por una fracción cero");
    }
    final nuevoNumerador = numerador * otra.denominador;
    final nuevoDenominador = denominador * otra.numerador;
    final resultado = Fraccion(nuevoNumerador, nuevoDenominador);
    resultado.simplificar();
    return resultado;
  }

  // Getter para el MCD
  int get mcd => _mcd(numerador, denominador);

  // Método toString
  @override
  String toString() {
    if (denominador == 1) {
      return '$numerador';
    }
    return '$numerador/$denominador';
  }

  // Método para obtener valor decimal
  double toDouble() {
    return numerador / denominador;
  }
}

class FraccionComparable extends Fraccion {
  FraccionComparable(int numerador, int denominador) : super(numerador, denominador);

  // Comparar si esta fracción es mayor que otra
  bool esMayorQue(Fraccion otra) {
    return this.toDouble() > otra.toDouble();
  }

  // Comparar si esta fracción es menor que otra
  bool esMenorQue(Fraccion otra) {
    return this.toDouble() < otra.toDouble();
  }

  // Comparar si esta fracción es igual a otra
  bool esIgualA(Fraccion otra) {
    final f1 = Fraccion(numerador, denominador);
    final f2 = Fraccion(otra.numerador, otra.denominador);
    f1.simplificar();
    f2.simplificar();
    return f1.numerador == f2.numerador && f1.denominador == f2.denominador;
  }

  // Comparar si esta fracción es mayor o igual que otra
  bool esMayorOIgualQue(Fraccion otra) {
    return esMayorQue(otra) || esIgualA(otra);
  }

  // Comparar si esta fracción es menor o igual que otra
  bool esMenorOIgualQue(Fraccion otra) {
    return esMenorQue(otra) || esIgualA(otra);
  }

  // Comparar si esta fracción es distinta de otra
  bool esDistintoQue(Fraccion otra) {
    return !esIgualA(otra);
  }
}