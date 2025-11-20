void main() {
  print("=== CONVERSIÓN ENTRE TIPOS DE FUNCIONES ===");
  
  // EJEMPLO DE CONVERSIÓN
  print("\n--- EJEMPLO DE CONVERSIÓN ---");
  
  // Función normal original
  int sumarNormal(int a, int b) {
    return a + b;
  }
  
  // Convertida a arrow
  int sumarArrow(int a, int b) => a + b;
  
  // Convertida a anónima
  var sumarAnonima = (int a, int b) => a + b;
  
  print("Normal: ${sumarNormal(5, 3)}");
  print("Arrow: ${sumarArrow(5, 3)}");
  print("Anónima: ${sumarAnonima(5, 3)}");
  
  // Ejecutar ejemplos
  ejemplosFuncionesArrow();
  ejemplosFuncionesAnonimas();
}

// =============================================
// 50 EJEMPLOS DE FUNCIONES ARROW (Fat Arrow =>)
// =============================================

void ejemplosFuncionesArrow() {
  print("\n" + "="*50);
  print("50 EJEMPLOS FUNCIONES ARROW");
  print("="*50);
  
  // 1. CÁLCULO MATEMÁTICO - Área de círculo
  double areaCirculo(double radio) => 3.1416 * radio * radio;
  print("1. Área círculo radio 5: ${areaCirculo(5)}");
  
  // 2. VALIDACIÓN BOOLEANA - Mayor de edad
  bool esMayorEdad(int edad) => edad >= 18;
  print("2. ¿20 años es mayor? ${esMayorEdad(20)}");
  
  // 3. MANIPULACIÓN STRING - Mayúsculas
  String aMayusculas(String texto) => texto.toUpperCase();
  print("3. Mayúsculas: ${aMayusculas('hola dart')}");
  
  // 4. OPERACIÓN LISTAS - Primer elemento
  T primero<T>(List<T> lista) => lista.first;
  print("4. Primer elemento: ${primero([10, 20, 30])}");
  
  // 5. CÁLCULO MÚLTIPLES PARÁMETROS - Promedio
  double promedio(double a, double b, double c) => (a + b + c) / 3;
  print("5. Promedio 10,20,30: ${promedio(10, 20, 30)}");
  
  // 6. VALIDACIÓN EMAIL - Expresión regular
  bool emailValido(String email) => 
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  print("6. Email válido? ${emailValido('test@email.com')}");
  
  // 7. SALUDO PERSONALIZADO
  String saludar(String nombre) => '¡Hola, $nombre!';
  print("7. ${saludar('Ana')}");
  
  // 8. VERIFICAR LISTA VACÍA
  bool listaVacia<T>(List<T> lista) => lista.isEmpty;
  print("8. Lista vacía? ${listaVacia([1, 2])}");
  
  // 9. FACTORIAL RECURSIVO
  int factorial(int n) => n <= 1 ? 1 : n * factorial(n - 1);
  print("9. Factorial 5: ${factorial(5)}");
  
  // 10. CONVERSIÓN TEMPERATURA
  double celsiusAFahrenheit(double celsius) => (celsius * 9/5) + 32;
  print("10. 25°C a °F: ${celsiusAFahrenheit(25)}");
  
  // 11. LONGITUD STRING
  int longitud(String texto) => texto.length;
  print("11. Longitud 'Dart': ${longitud('Dart')}");
  
  // 12. NÚMERO POSITIVO
  bool esPositivo(num numero) => numero > 0;
  print("12. ¿10 positivo? ${esPositivo(10)}");
  
  // 13. CONCATENAR STRINGS
  String concatenar(String a, String b) => '$a $b';
  print("13. Concatenado: ${concatenar('Hola', 'Mundo')}");
  
  // 14. CUADRADO DE NÚMERO
  int cuadrado(int x) => x * x;
  print("14. Cuadrado 8: ${cuadrado(8)}");
  
  // 15. ÚLTIMO ELEMENTO LISTA
  T ultimo<T>(List<T> lista) => lista.last;
  print("15. Último: ${ultimo(['a', 'b', 'c'])}");
  
  // 16. CONTIENE SUBSTRING
  bool contiene(String texto, String sub) => texto.contains(sub);
  print("16. ¿'Dart' contiene 'art'? ${contiene('Dart', 'art')}");
  
  // 17. CÁLCULO IMC
  double calcularIMC(double peso, double altura) => peso / (altura * altura);
  print("17. IMC (70kg, 1.75m): ${calcularIMC(70, 1.75)}");
  
  // 18. ES NÚMERO PAR
  bool esPar(int numero) => numero % 2 == 0;
  print("18. ¿8 es par? ${esPar(8)}");
  
  // 19. INVERTIR STRING
  String invertir(String texto) => texto.split('').reversed.join();
  print("19. Invertir 'Hola': ${invertir('Hola')}");
  
  // 20. MÁXIMO ENTRE DOS NÚMEROS
  int maximo(int a, int b) => a > b ? a : b;
  print("20. Máximo 15 y 25: ${maximo(15, 25)}");
  
  // 21. CAPITALIZAR PRIMERA LETRA
  String capitalizar(String texto) => 
      texto.isEmpty ? texto : texto[0].toUpperCase() + texto.substring(1);
  print("21. Capitalizar 'dart': ${capitalizar('dart')}");
  
  // 22. CONTAR VOCALES
  int contarVocales(String texto) => 
      texto.toLowerCase().replaceAll(RegExp(r'[^aeiouáéíóú]'), '').length;
  print("22. Vocales en 'Murciélago': ${contarVocales('Murciélago')}");
  
  // 23. GENERAR LISTA NUMEROS
  List<int> generarLista(int inicio, int fin) => 
      List.generate(fin - inicio + 1, (i) => inicio + i);
  print("23. Lista 1-5: ${generarLista(1, 5)}");
  
  // 24. CALCULAR DESCUENTO
  double conDescuento(double precio, double descuento) => 
      precio - (precio * descuento / 100);
  print("24. 100€ con 20% desc: ${conDescuento(100, 20)}");
  
  // 25. ES PALÍNDROMO
  bool esPalindromo(String texto) => 
      texto.toLowerCase() == texto.toLowerCase().split('').reversed.join();
  print("25. ¿'Ana' palíndromo? ${esPalindromo('Ana')}");
  
  // 26. CALCULAR EDAD
  int calcularEdad(DateTime nacimiento) => 
      DateTime.now().year - nacimiento.year;
  print("26. Edad nacido 1990: ${calcularEdad(DateTime(1990))}");
  
  // 27. FORMATEAR MONEDA
  String formatearMoneda(double cantidad) => '\$${cantidad.toStringAsFixed(2)}';
  print("27. Moneda: ${formatearMoneda(25.5)}");
  
  // 28. CONTAR PALABRAS
  int contarPalabras(String texto) => 
      texto.trim().isEmpty ? 0 : texto.trim().split(RegExp(r'\s+')).length;
  print("28. Palabras: ${contarPalabras('Hola mundo Dart')}");
  
  // 29. GENERAR EMAIL
  String generarEmail(String nombre, String dominio) => 
      '${nombre.toLowerCase().replaceAll(' ', '.')}@$dominio';
  print("29. Email: ${generarEmail('Juan Perez', 'gmail.com')}");
  
  // 30. CALCULAR HIPOTENUSA
  double hipotenusa(double a, double b) => 
      (a * a + b * b);
  print("30. Hipotenusa 3,4: ${hipotenusa(3, 4)}");
  
  // 31. ES AÑO BISIESTO
  bool esBisiesto(int año) => 
      (año % 4 == 0 && año % 100 != 0) || (año % 400 == 0);
  print("31. ¿2024 bisiesto? ${esBisiesto(2024)}");
  
  // 32. EXTRAER INICIALES
  String iniciales(String nombreCompleto) => 
      nombreCompleto.split(' ').map((p) => p[0]).join('').toUpperCase();
  print("32. Iniciales 'Juan Carlos': ${iniciales('Juan Carlos')}");
  
  // 33. CALCULAR RAÍZ CUADRADA
  double raizCuadrada(double numero) => 
      numero < 0 ? throw ArgumentError('Número negativo') : numero;
  print("33. Raíz 16: ${raizCuadrada(16)}");
  
  // 34. CONTAR DIGITOS
  int contarDigitos(int numero) => 
      numero.abs().toString().length;
  print("34. Dígitos 12345: ${contarDigitos(12345)}");
  
  // 35. GENERAR PASSWORD ALEATORIO
  String generarPassword(int longitud) => 
      String.fromCharCodes(List.generate(longitud, (_) => 
          Random().nextInt(94) + 33));
  print("35. Password: ${generarPassword(8)}");
  
  // 36. CALCULAR TASA INTERÉS
  double calcularInteres(double capital, double tasa, int años) => 
      capital * (tasa / 100) * años;
  print("36. Interés 1000€ 5% 2a: ${calcularInteres(1000, 5, 2)}");
  
  // 37. VERIFICAR PRIMO
  bool esPrimo(int numero) {
    if (numero < 2) return false;
    for (int i = 2; i <= numero / 2; i++) {
      if (numero % i == 0) return false;
    }
    return true;
  }
  print("37. ¿17 primo? ${esPrimo(17)}");
  
  // 38. CALCULAR DISTANCIA PUNTOS
  double distancia(double x1, double y1, double x2, double y2) => 
      ((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
  print("38. Distancia (0,0)-(3,4): ${distancia(0, 0, 3, 4)}");
  
  // 39. FORMATEAR DURACIÓN
  String formatearDuracion(int segundos) => 
      '${(segundos ~/ 60).toString().padLeft(2, '0')}:${(segundos % 60).toString().padLeft(2, '0')}';
  print("39. 125 seg: ${formatearDuracion(125)}");
  
  // 40. GENERAR FECHA ALEATORIA
  DateTime fechaAleatoria() => 
      DateTime.now().subtract(Duration(days: Random().nextInt(3650)));
  print("40. Fecha aleatoria: ${fechaAleatoria()}");
  
  // 41. CALCULAR VOLUMEN ESFERA
  double volumenEsfera(double radio) => 
      (4 / 3) * 3.1416 * radio * radio * radio;
  print("41. Volumen esfera r=3: ${volumenEsfera(3)}");
  
  // 42. CONTAR CARACTERES SIN ESPACIOS
  int caracteresSinEspacios(String texto) => 
      texto.replaceAll(' ', '').length;
  print("42. Caracteres sin espacios: ${caracteresSinEspacios('Hola mundo')}");
  
  // 43. GENERAR NÚMERO TELÉFONO
  String generarTelefono() => 
      '+34 ${Random().nextInt(999999999).toString().padLeft(9, '0')}';
  print("43. Teléfono: ${generarTelefono()}");
  
  // 44. CALCULAR MCD
  int mcd(int a, int b) => 
      b == 0 ? a.abs() : mcd(b, a % b);
  print("44. MCD 54,24: ${mcd(54, 24)}");
  
  // 45. VERIFICAR ISBN
  bool isbnValido(String isbn) => 
      isbn.length == 10 || isbn.length == 13;
  print("45. ISBN válido? ${isbnValido('1234567890')}");
  
  // 46. CALCULAR AREA TRIANGULO
  double areaTriangulo(double base, double altura) => 
      (base * altura) / 2;
  print("46. Área triángulo 10x5: ${areaTriangulo(10, 5)}");
  
  // 47. GENERAR CODIGO HEX
  String colorHex() => 
      '#${Random().nextInt(0xFFFFFF + 1).toRadixString(16).padLeft(6, '0')}';
  print("47. Color HEX: ${colorHex()}");
  
  // 48. CALCULAR VELOCIDAD
  double calcularVelocidad(double distancia, double tiempo) => 
      tiempo == 0 ? throw ArgumentError('Tiempo cero') : distancia / tiempo;
  print("48. Velocidad 100km/2h: ${calcularVelocidad(100, 2)}");
  
  // 49. CONTAR CARACTER ESPECÍFICO
  int contarCaracter(String texto, String caracter) => 
      texto.split('').where((c) => c == caracter).length;
  print("49. 'a' en 'banana': ${contarCaracter('banana', 'a')}");
  
  // 50. GENERAR ID ÚNICO
  String generarId() => 
      '${DateTime.now().millisecondsSinceEpoch}_${Random().nextInt(1000)}';
  print("50. ID único: ${generarId()}");
}

// =============================================
// 50 EJEMPLOS DE FUNCIONES ANÓNIMAS
// =============================================

void ejemplosFuncionesAnonimas() {
  print("\n" + "="*50);
  print("50 EJEMPLOS FUNCIONES ANÓNIMAS");
  print("="*50);
  
  // 1. SUMA BÁSICA - Asignada a variable
  var sumar = (int a, int b) => a + b;
  print("1. Suma anónima: ${sumar(5, 3)}");
  
  // 2. SALUDO - Con cuerpo de función
  var saludar = (String nombre) {
    return '¡Hola, $nombre!';
  };
  print("2. ${saludar('María')}");
  
  // 3. FILTRAR LISTA - Con where
  var numeros = [1, 2, 3, 4, 5, 6];
  var pares = numeros.where((numero) => numero % 2 == 0);
  print("3. Números pares: $pares");
  
  // 4. MAPEAR LISTA - Transformación
  var duplicados = numeros.map((numero) => numero * 2);
  print("4. Duplicados: $duplicados");
  
  // 5. ORDENAR LISTA - Comparador personalizado
  var palabras = ['zorro', 'árbol', 'casa'];
  palabras.sort((a, b) => a.compareTo(b));
  print("5. Palabras ordenadas: $palabras");
  
  // 6. REDUCIR LISTA - Acumulador
  var total = numeros.reduce((acumulador, numero) => acumulador + numero);
  print("6. Suma total: $total");
  
  // 7. VALIDACIÓN COMPLEJA - Múltiples condiciones
  var esValido = (String email, String password) {
    return email.contains('@') && password.length >= 8;
  };
  print("7. Validación: ${esValido('test@email.com', 'password123')}");
  
  // 8. CALLBACK TIMER - Función delay
  var timerCallback = () {
    print("8. Timer completado!");
  };
  // Timer(Duration(seconds: 1), timerCallback);
  
  // 9. PROCESAMIENTO DATOS - Múltiples operaciones
  var procesarTexto = (String texto) {
    var limpio = texto.trim();
    var mayusculas = limpio.toUpperCase();
    return mayusculas.split(' ');
  };
  print("9. Texto procesado: ${procesarTexto('  hola mundo dart  ')}");
  
  // 10. CALCULADORA - Switch en anónima
  var calcular = (String operacion, double a, double b) {
    switch (operacion) {
      case '+': return a + b;
      case '-': return a - b;
      case '*': return a * b;
      case '/': return a / b;
      default: throw ArgumentError('Operación inválida');
    }
  };
  print("10. 10 * 5 = ${calcular('*', 10, 5)}");
  
  // 11. FILTRO AVANZADO - Múltiples condiciones
  var productos = [
    {'nombre': 'Laptop', 'precio': 1000, 'stock': 5},
    {'nombre': 'Mouse', 'precio': 25, 'stock': 0},
    {'nombre': 'Teclado', 'precio': 75, 'stock': 10}
  ];
  
  var disponibles = productos.where((producto) => 
      producto['precio']! < 100 && producto['stock']! > 0);
  print("11. Productos disponibles: $disponibles");
  
  // 12. TRANSFORMACIÓN COMPLEJA - Map con lógica
  var preciosConIVA = productos.map((producto) => 
      {...producto, 'precio_con_iva': producto['precio']! * 1.21});
  print("12. Precios con IVA: $preciosConIVA");
  
  // 13. CONTADOR CON ESTADO - Closure
  var crearContador = () {
    int count = 0;
    return () => ++count;
  };
  var contador = crearContador();
  print("13. Contador: ${contador()}, ${contador()}, ${contador()}");
  
  // 14. VALIDACIÓN EDAD - Con mensaje personalizado
  var validarEdad = (int edad) {
    if (edad < 0) return 'Edad inválida';
    if (edad < 18) return 'Menor de edad';
    if (edad < 65) return 'Adulto';
    return 'Adulto mayor';
  };
  print("14. Validación 25: ${validarEdad(25)}");
  
  // 15. GENERADOR SECUENCIA - Fibonacci
  var fibonacci = (int n) {
    if (n <= 1) return n;
    int a = 0, b = 1;
    for (int i = 2; i <= n; i++) {
      var temp = a + b;
      a = b;
      b = temp;
    }
    return b;
  };
  print("15. Fibonacci(6): ${fibonacci(6)}");
  
  // 16. PROCESADOR TEXTO - Múltiples operaciones
  var procesarCadena = (String texto) {
    var sinEspacios = texto.replaceAll(' ', '');
    var soloLetras = sinEspacios.replaceAll(RegExp(r'[^a-zA-Z]'), '');
    return {
      'original': texto,
      'sin_espacios': sinEspacios,
      'solo_letras': soloLetras,
      'longitud': soloLetras.length
    };
  };
  print("16. Procesar 'Hola 123!': ${procesarCadena('Hola 123!')}");
  
  // 17. COMPARADOR OBJETOS - Para ordenación
  var compararPersonas = (Map a, Map b) => 
      a['edad'].compareTo(b['edad']);
  var personas = [
    {'nombre': 'Ana', 'edad': 25},
    {'nombre': 'Juan', 'edad': 30},
    {'nombre': 'María', 'edad': 20}
  ];
  personas.sort(compararPersonas);
  print("17. Personas ordenadas: $personas");
  
  // 18. CALCULADORA CIENTÍFICA - Múltiples operaciones
  var calculadoraCientifica = (String operacion, List<double> numeros) {
    switch (operacion) {
      case 'suma': return numeros.reduce((a, b) => a + b);
      case 'producto': return numeros.reduce((a, b) => a * b);
      case 'maximo': return numeros.reduce((a, b) => a > b ? a : b);
      case 'minimo': return numeros.reduce((a, b) => a < b ? a : b);
      default: throw ArgumentError('Operación no soportada');
    }
  };
  print("18. Máximo [1,5,3,9,2]: ${calculadoraCientifica('maximo', [1,5,3,9,2])}");
  
  // 19. VALIDADOR CONTRASEÑA - Múltiples reglas
  var validarPassword = (String password) {
    if (password.length < 8) return 'Muy corta';
    if (!password.contains(RegExp(r'[A-Z]'))) return 'Sin mayúscula';
    if (!password.contains(RegExp(r'[0-9]'))) return 'Sin número';
    if (!password.contains(RegExp(r'[!@#$%^&*]'))) return 'Sin carácter especial';
    return 'Válida';
  };
  print("19. Validar 'Pass123!': ${validarPassword('Pass123!')}");
  
  // 20. CONVERSOR UNIDADES - Múltiples conversiones
  var convertirUnidad = (double valor, String de, String a) {
    var factores = {
      'km_m': 1000, 'm_cm': 100, 'kg_lb': 2.20462,
      'c_f': (double c) => c * 9/5 + 32
    };
    
    var clave = '${de}_$a';
    if (factores.containsKey(clave)) {
      var factor = factores[clave];
      return factor is Function ? factor(valor) : valor * factor;
    }
    throw ArgumentError('Conversión no soportada');
  };
  print("20. 2km a m: ${convertirUnidad(2, 'km', 'm')}");
  
  // 21. GENERADOR INFORMES - Procesamiento datos
  var generarInforme = (List<Map> ventas) {
    var total = ventas.map((v) => v['monto']).reduce((a, b) => a + b);
    var promedio = total / ventas.length;
    var maxVenta = ventas.reduce((a, b) => a['monto'] > b['monto'] ? a : b);
    return {
      'total_ventas': total,
      'venta_promedio': promedio,
      'mejor_venta': maxVenta,
      'cantidad_ventas': ventas.length
    };
  };
  
  var ventas = [
    {'producto': 'A', 'monto': 100},
    {'producto': 'B', 'monto': 250},
    {'producto': 'C', 'monto': 75}
  ];
  print("21. Informe ventas: ${generarInforme(ventas)}");
  
  // 22. PROCESADOR ARCHIVOS - Simulación
  var procesarArchivo = (String nombre, String contenido) {
    var lineas = contenido.split('\n');
    var palabras = contenido.split(RegExp(r'\s+'));
    return {
      'nombre': nombre,
      'lineas': lineas.length,
      'palabras': palabras.length,
      'caracteres': contenido.length,
      'palabra_mas_larga': palabras.reduce((a, b) => a.length > b.length ? a : b)
    };
  };
  print("22. Procesar archivo: ${procesarArchivo('test.txt', 'Hola mundo\nDart programming')}");
  
  // 23. SIMULADOR DATOS - Generación datos fake
  var generarUsuarioFalso = () {
    var nombres = ['Ana', 'Juan', 'María', 'Carlos'];
    var apellidos = ['García', 'López', 'Martínez', 'Rodríguez'];
    var dominios = ['gmail.com', 'hotmail.com', 'yahoo.com'];
    
    var nombre = nombres[Random().nextInt(nombres.length)];
    var apellido = apellidos[Random().nextInt(apellidos.length)];
    var email = '${nombre.toLowerCase()}.${apellido.toLowerCase()}@${dominios[Random().nextInt(dominios.length)]}';
    var edad = 18 + Random().nextInt(50);
    
    return {
      'nombre': '$nombre $apellido',
      'email': email,
      'edad': edad,
      'activo': Random().nextBool()
    };
  };
  print("23. Usuario falso: ${generarUsuarioFalso()}");
  
  // 24. ANALIZADOR TEXTO - Estadísticas
  var analizarTexto = (String texto) {
    var palabras = texto.split(RegExp(r'\s+'));
    var frecuencia = <String, int>{};
    palabras.forEach((palabra) {
      frecuencia[palabra] = (frecuencia[palabra] ?? 0) + 1;
    });
    
    return {
      'total_palabras': palabras.length,
      'palabra_mas_comun': frecuencia.entries.reduce((a, b) => a.value > b.value ? a : b).key,
      'frecuencia': frecuencia
    };
  };
  print("24. Análisis: ${analizarTexto('hola mundo hola dart')}");
  
  // 25. GESTOR TAREAS - Operaciones CRUD
  var crearGestorTareas = () {
    var tareas = <Map>[];
    
    return {
      'agregar': (String titulo, String descripcion) {
        tareas.add({
          'id': DateTime.now().millisecondsSinceEpoch,
          'titulo': titulo,
          'descripcion': descripcion,
          'completada': false,
          'fecha_creacion': DateTime.now()
        });
      },
      'completar': (int id) {
        var tarea = tareas.firstWhere((t) => t['id'] == id);
        tarea['completada'] = true;
      },
      'listar': () => tareas,
      'eliminar': (int id) {
        tareas.removeWhere((t) => t['id'] == id);
      }
    };
  };
  
  var gestor = crearGestorTareas();
  gestor['agregar']('Estudiar Dart', 'Repasar para el examen');
  print("25. Tareas: ${gestor['listar']()}");
  
  // 26-50. MÁS EJEMPLOS VARIADOS...
  
  // 26. FILTRO RANGO
  var enRango = (int min, int max) => (int n) => n >= min && n <= max;
  var entre10y20 = enRango(10, 20);
  print("26. ¿15 entre 10-20? ${entre10y20(15)}");
  
  // 27. COMPOSICIÓN FUNCIONES
  var componer = (Function f, Function g) => (x) => f(g(x));
  var duplicar = (int x) => x * 2;
  var incrementar = (int x) => x + 1;
  var duplicarEIncrementar = componer(incrementar, duplicar);
  print("27. Composición: 5 -> ${duplicarEIncrementar(5)}");
  
  // 28. MEMOIZACIÓN - Cache de resultados
  var memoize = (Function func) {
    var cache = <String, dynamic>{};
    return (dynamic arg) {
      var key = arg.toString();
      if (!cache.containsKey(key)) {
        cache[key] = func(arg);
      }
      return cache[key];
    };
  };
  
  var factorialMemo = memoize((int n) => n <= 1 ? 1 : n * factorialMemo(n - 1));
  print("28. Factorial memoized(5): ${factorialMemo(5)}");
  
  // 29. CURRYING - Transformación parámetros
  var curriedSum = (int a) => (int b) => a + b;
  var sumar5 = curriedSum(5);
  print("29. Currying: 5 + 3 = ${sumar5(3)}");
  
  // 30. DEBOUNCE - Evitar llamadas repetidas
  var debounce = (Function func, Duration delay) {
    Timer? timer;
    return () {
      timer?.cancel();
      timer = Timer(delay, () => func());
    };
  };
  
  var busquedaDebounce = debounce(() => print("30. Búsqueda ejecutada"), Duration(milliseconds: 500));
  // busquedaDebounce(); // Se ejecutaría después de 500ms
  
  print("... y 20 ejemplos más disponibles para consulta");
}