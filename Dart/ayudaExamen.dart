// ===== ARCHIVO COMPLETO DE REPASO DART - EXAMEN =====
// dart create --template=console ejercicio5
// dart pub get
//1.18
//coleection

// 1. FUNCIONES
void main() {
  print("=== REPASO COMPLETO DART ===");
  
  // Llamadas a ejemplos de funciones
  ejemploFunciones();
  ejemploClases();
  ejemploHerencia();
  ejemploMixins();
  ejemploAsync();
  ejemploExcepciones();
  ejemploUtilidades();
}

// =============================================
// SECCIÓN 1: FUNCIONES
// =============================================

void ejemploFunciones() {
  print("\n--- FUNCIONES ---");
  
  // 1.1 Función básica
  saludar("Juan");
  
  // 1.2 Función con parámetros posicionales
  print("Suma: ${sumar(5, 3)}");
  
  // 1.3 Función con parámetros nombrados (pueden ser opcionales)
  mostrarInfo(nombre: "Ana", edad: 25);
  mostrarInfo(nombre: "Carlos", edad: 30, ciudad: "Madrid");
  
  // 1.4 Función con parámetros posicionales opcionales
  imprimirDatos("María", "López");
  imprimirDatos("Pedro", "García", 30);
  
  // 1.5 Función arrow (una sola línea)
  print("Doble: ${calcularDoble(4)}");
  print("Es par: ${esPar(7)}");
  
  // 1.6 Funciones anónimas
  ejemploFuncionesAnonimas();
  
  // 1.7 Funciones como parámetros
  ejecutarOperacion(5, 3, multiplicar);
}

// 1.1 Función básica
void saludar(String nombre) {
  print("Hola $nombre!");
}

// 1.2 Función con retorno
int sumar(int a, int b) {
  return a + b;
}

// 1.3 Función con parámetros nombrados {}
void mostrarInfo({required String nombre, required int edad, String ciudad = "Desconocida"}) {
  print("$nombre, $edad años, de $ciudad");
}

// 1.4 Función con parámetros posicionales opcionales []
void imprimirDatos(String nombre, String apellido, [int? edad]) {
  if (edad != null) {
    print("$nombre $apellido, $edad años");
  } else {
    print("$nombre $apellido");
  }
}

// 1.5 Funciones arrow (fat arrow)
int calcularDoble(int numero) => numero * 2;
bool esPar(int numero) => numero % 2 == 0;

// 1.6 Funciones anónimas
void ejemploFuncionesAnonimas() {
  print("\n--- Funciones Anónimas ---");
  
  // Función anónima asignada a variable
  var cuadrado = (int x) => x * x;
  print("Cuadrado de 5: ${cuadrado(5)}");
  
  // Lista de funciones anónimas
  List<Function> operaciones = [
    (int a, int b) => a + b,
    (int a, int b) => a - b,
    (int a, int b) => a * b,
  ];
  
  print("Operaciones: ${operaciones[0](10, 2)}"); // Suma
  print("Operaciones: ${operaciones[1](10, 2)}"); // Resta
  
  // forEach con función anónima
  List<int> numeros = [1, 2, 3, 4, 5];
  numeros.forEach((numero) {
    print("Número: $numero");
  });
}

// 1.7 Funciones como parámetros
void ejecutarOperacion(int a, int b, Function operacion) {
  print("Resultado: ${operacion(a, b)}");
}

int multiplicar(int a, int b) => a * b;

// =============================================
// SECCIÓN 2: CLASES - CONSTRUCTORES
// =============================================

void ejemploClases() {
  print("\n--- CLASES Y CONSTRUCTORES ---");
  
  // 2.1 Constructor básico
  var persona1 = Persona("Juan", 25);
  print(persona1);
  
  // 2.2 Constructor con nombre
  var persona2 = Persona.recienNacido("Ana");
  print(persona2);
  
  // 2.3 Constructor constante
  final puntoConstante = const Punto(1, 2);
  print("Punto constante: $puntoConstante");
  
  // 2.4 Factory constructor
  var usuario1 = Usuario.crear("admin", "admin123");
  var usuario2 = Usuario.crear("user", "pass");
  print(usuario1);
  print(usuario2);
  
  // 2.5 Getters y Setters
  var rectangulo = Rectangulo(5, 3);
  print("Área: ${rectangulo.area}");
  rectangulo.ancho = 10;
  print("Nueva área: ${rectangulo.area}");
  
  // 2.6 Métodos estáticos
  print("Valor de PI: ${Calculadora.pi}");
  print("Suma estática: ${Calculadora.sumar(10, 5)}");
}

// 2.1 Clase básica
class Persona {
  String nombre;
  int edad;
  
  // Constructor básico
  Persona(this.nombre, this.edad);
  
  // Constructor con nombre
  Persona.recienNacido(String nombre) : this(nombre, 0);
  
  @override
  String toString() => "Persona: $nombre, $edad años";
}

// 2.3 Clase con constructor constante
class Punto {
  final int x;
  final int y;
  
  const Punto(this.x, this.y);
  
  @override
  String toString() => "Punto($x, $y)";
}

// 2.4 Factory constructor
class Usuario {
  String username;
  String password;
  static final Map<String, Usuario> _cache = {};
  
  Usuario._internal(this.username, this.password);
  
  factory Usuario.crear(String username, String password) {
    if (_cache.containsKey(username)) {
      return _cache[username]!;
    } else {
      final nuevoUsuario = Usuario._internal(username, password);
      _cache[username] = nuevoUsuario;
      return nuevoUsuario;
    }
  }
  
  @override
  String toString() => "Usuario: $username";
}

// 2.5 Getters y Setters
class Rectangulo {
  double _ancho;
  double _alto;
  
  Rectangulo(this._ancho, this._alto);
  
  // Getter
  double get area => _ancho * _alto;
  
  // Setters
  set ancho(double valor) {
    if (valor > 0) _ancho = valor;
  }
  
  set alto(double valor) {
    if (valor > 0) _alto = valor;
  }
}

// 2.6 Métodos estáticos
class Calculadora {
  static const double pi = 3.1416;
  
  static double sumar(double a, double b) => a + b;
  static double multiplicar(double a, double b) => a * b;
}

// =============================================
// SECCIÓN 3: HERENCIA Y POLIMORFISMO
// =============================================

void ejemploHerencia() {
  print("\n--- HERENCIA Y POLIMORFISMO ---");
  
  var perro = Perro("Buddy", "Labrador");
  var gato = Gato("Whiskers", 7);
  
  perro.hacerSonido();
  gato.hacerSonido();
  
  // Polimorfismo
  List<Animal> animales = [perro, gato];
  for (var animal in animales) {
    animal.hacerSonido();
  }
  
  // Herencia con constructores
  var perroGrande = PerroGrande("Max", "Pastor Alemán", 40);
  perroGrande.mostrarInfo();
}

// Clase base abstracta
abstract class Animal {
  String nombre;
  
  Animal(this.nombre);
  
  void hacerSonido(); // Método abstracto
  
  void dormir() {
    print("$nombre está durmiendo...");
  }
}

// Clase derivada
class Perro extends Animal {
  String raza;
  
  Perro(String nombre, this.raza) : super(nombre);
  
  @override
  void hacerSonido() {
    print("$nombre (raza: $raza) dice: ¡Guau guau!");
  }
}

class Gato extends Animal {
  int vidas;
  
  Gato(String nombre, this.vidas) : super(nombre);
  
  @override
  void hacerSonido() {
    print("$nombre dice: ¡Miau! (vidas restantes: $vidas)");
  }
}

// Herencia múltiple con Mixins
class PerroGrande extends Perro with Cazador {
  double peso;
  
  PerroGrande(String nombre, String raza, this.peso) : super(nombre, raza);
  
  void mostrarInfo() {
    print("Perro grande: $nombre, $raza, $peso kg");
    cazar(); // Del mixin
  }
}

// =============================================
// SECCIÓN 4: MIXINS
// =============================================

mixin Cazador {
  void cazar() {
    print("Está cazando...");
  }
}

mixin Nadador {
  void nadar() {
    print("Está nadando...");
  }
}

void ejemploMixins() {
  print("\n--- MIXINS ---");
  
  var pato = Pato("Donald");
  pato.volar();
  pato.nadar();
}

class Pato with Cazador, Nadador {
  String nombre;
  
  Pato(this.nombre);
  
  void volar() {
    print("$nombre está volando");
  }
}

// =============================================
// SECCIÓN 5: VISIBILIDAD (DIFERENTE A JAVA)
// =============================================

class EjemploVisibilidad {
  // Público (por defecto) - se puede acceder desde cualquier lugar
  String nombrePublico = "Público";
  
  // Privado (empieza con _) - solo accesible dentro de este archivo
  String _nombrePrivado = "Privado";
  
  // Getter para acceso controlado a privado
  String get nombrePrivado => _nombrePrivado;
  
  // Setter con validación
  set nombrePrivado(String valor) {
    if (valor.isNotEmpty) _nombrePrivado = valor;
  }
  
  void _metodoPrivado() {
    print("Método privado");
  }
  
  void metodoPublico() {
    _metodoPrivado(); // Se puede llamar desde la misma clase
    print("Accediendo a privado: $_nombrePrivado");
  }
}

// =============================================
// SECCIÓN 6: ASINCRONÍA
// =============================================

void ejemploAsync() async {
  print("\n--- ASINCRONÍA ---");
  
  print("Iniciando...");
  
  // Future
  var resultado = await obtenerDatos();
  print("Datos obtenidos: $resultado");
  
  // Stream
  await contarStream();
}

Future<String> obtenerDatos() async {
  await Future.delayed(Duration(seconds: 1));
  return "Datos cargados";
}

Stream<int> contar() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}

Future<void> contarStream() async {
  await for (final numero in contar()) {
    print("Stream: $numero");
  }
}

// =============================================
// SECCIÓN 7: NULL SAFETY
// =============================================

class EjemploNullSafety {
  String? nombreNullable; // Puede ser null
  late String nombreTardio; // Se inicializará después
  String nombreRequerido; // No puede ser null
  
  EjemploNullSafety(this.nombreRequerido);
  
  void inicializarTardio(String valor) {
    nombreTardio = valor; // Inicializando late
  }
  
  void ejemploMetodos() {
    // Safe call
    print(nombreNullable?.length);
    
    // Null assertion operator
    // print(nombreNullable!.length); // Cuidado: puede causar error
    
    // Default value
    print(nombreNullable ?? "Valor por defecto");
  }
}

// =============================================
// SECCIÓN 8: EXCEPCIONES
// =============================================

// Excepción personalizada
class SaldoInsuficienteException implements Exception {
  final double saldoActual;
  final double cantidadRequerida;
  final String mensaje;
  
  SaldoInsuficienteException(this.saldoActual, this.cantidadRequerida)
    : mensaje = 'Saldo insuficiente: tienes \$$saldoActual pero necesitas \$$cantidadRequerida';
  
  @override
  String toString() => mensaje;
}

class CuentaBancaria {
  String titular;
  double _saldo;
  
  CuentaBancaria(this.titular, [this._saldo = 0.0]);
  
  double get saldo => _saldo;
  
  void depositar(double cantidad) {
    if (cantidad <= 0) {
      throw ArgumentError('La cantidad debe ser positiva');
    }
    _saldo += cantidad;
    print('Depositado: \$$cantidad. Saldo actual: \$$_saldo');
  }
  
  void retirar(double cantidad) {
    if (cantidad <= 0) {
      throw ArgumentError('La cantidad debe ser positiva');
    }
    
    if (cantidad > _saldo) {
      throw SaldoInsuficienteException(_saldo, cantidad);
    }
    
    _saldo -= cantidad;
    print('Retirado: \$$cantidad. Saldo actual: \$$_saldo');
  }
  
  void transferir(CuentaBancaria destino, double cantidad) {
    try {
      retirar(cantidad);
      destino.depositar(cantidad);
      print('Transferencia exitosa de \$$cantidad a ${destino.titular}');
    } on SaldoInsuficienteException catch (e) {
      print('Error en transferencia: $e');
      rethrow; // Relanza la excepción
    } catch (e) {
      print('Error inesperado: $e');
    } finally {
      print('Operación de transferencia finalizada');
    }
  }
}

void ejemploExcepciones() {
  print("\n--- EXCEPCIONES ---");
  
  var cuenta1 = CuentaBancaria("Juan", 1000);
  var cuenta2 = CuentaBancaria("Maria", 500);
  
  // Manejo de excepciones con try-catch
  try {
    cuenta1.depositar(200);
    cuenta1.retirar(300);
    
    // Esto lanzará una excepción
    cuenta1.retirar(2000);
    
  } on SaldoInsuficienteException catch (e) {
    print('❌ Excepción controlada: $e');
  } on ArgumentError catch (e) {
    print('❌ Error de argumento: $e');
  } catch (e) {
    print('❌ Error inesperado: $e');
  } finally {
    print('✅ Bloque finally siempre se ejecuta');
  }
  
  // Transferencia con manejo de excepciones
  try {
    cuenta1.transferir(cuenta2, 800);
  } catch (e) {
    print('Transferencia fallida: $e');
  }
  
  // Uso de assert (solo en modo debug)
  var valor = 10;
  assert(valor > 5, 'El valor debe ser mayor que 5');
  print('Assert pasado correctamente');
}

// =============================================
// SECCIÓN 9: MÉTODOS ÚTILES
// =============================================

class Utilidades {
  // Generar número aleatorio en un rango
  static int numeroAleatorio(int min, int max) {
    return min + (Random().nextInt(max - min + 1));
  }
  
  // Formatear fecha
  static String formatearFecha(DateTime fecha, [String formato = 'dd/MM/yyyy']) {
    return '${fecha.day.toString().padLeft(2, '0')}/${fecha.month.toString().padLeft(2, '0')}/${fecha.year}';
  }
  
  // Validar email
  static bool validarEmail(String email) {
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }
  
  // Capitalizar texto
  static String capitalizar(String texto) {
    if (texto.isEmpty) return texto;
    return texto[0].toUpperCase() + texto.substring(1).toLowerCase();
  }
  
  // Calcular edad desde fecha de nacimiento
  static int calcularEdad(DateTime fechaNacimiento) {
    final ahora = DateTime.now();
    int edad = ahora.year - fechaNacimiento.year;
    if (ahora.month < fechaNacimiento.month || 
        (ahora.month == fechaNacimiento.month && ahora.day < fechaNacimiento.day)) {
      edad--;
    }
    return edad;
  }
  
  // Generar ID único
  static String generarId([String prefijo = '']) {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final random = Random().nextInt(1000);
    return '${prefijo}${timestamp}_$random';
  }
  
  // Verificar si una lista contiene duplicados
  static bool tieneDuplicados<T>(List<T> lista) {
    return lista.toSet().length != lista.length;
  }
  
  // Contar palabras en un texto
  static int contarPalabras(String texto) {
    if (texto.trim().isEmpty) return 0;
    return texto.trim().split(RegExp(r'\s+')).length;
  }
}

void ejemploUtilidades() {
  print("\n--- MÉTODOS ÚTILES ---");
  
  // Números aleatorios
  print('Número aleatorio (1-100): ${Utilidades.numeroAleatorio(1, 100)}');
  print('Número aleatorio (50-150): ${Utilidades.numeroAleatorio(50, 150)}');
  
  // Fechas
  final ahora = DateTime.now();
  print('Fecha formateada: ${Utilidades.formatearFecha(ahora)}');
  
  // Validaciones
  print('Email válido: ${Utilidades.validarEmail("usuario@email.com")}');
  print('Email inválido: ${Utilidades.validarEmail("usuario@")}');
  
  // Texto
  print('Texto capitalizado: ${Utilidades.capitalizar("hOLA mUNDO")}');
  
  // Edad
  final fechaNacimiento = DateTime(1990, 5, 15);
  print('Edad: ${Utilidades.calcularEdad(fechaNacimiento)} años');
  
  // IDs únicos
  print('ID único: ${Utilidades.generarId("USER_")}');
  
  // Listas
  final listaConDuplicados = [1, 2, 3, 2, 1];
  final listaSinDuplicados = [1, 2, 3, 4, 5];
  print('Lista con duplicados: ${Utilidades.tieneDuplicados(listaConDuplicados)}');
  print('Lista sin duplicados: ${Utilidades.tieneDuplicados(listaSinDuplicados)}');
  
  // Contar palabras
  final texto = "Dart es un lenguaje de programación moderno";
  print('Palabras en texto: ${Utilidades.contarPalabras(texto)}');
  
  // Ejemplo práctico: crear usuarios con datos aleatorios
  crearUsuarioAleatorio();
}

void crearUsuarioAleatorio() {
  final nombres = ['Ana', 'Carlos', 'Maria', 'Pedro', 'Laura'];
  final apellidos = ['Garcia', 'Lopez', 'Martinez', 'Rodriguez', 'Perez'];
  
  final nombre = nombres[Utilidades.numeroAleatorio(0, nombres.length - 1)];
  final apellido = apellidos[Utilidades.numeroAleatorio(0, apellidos.length - 1)];
  final edad = Utilidades.numeroAleatorio(18, 65);
  final id = Utilidades.generarId("USR_");
  
  print('\n--- USUARIO ALEATORIO GENERADO ---');
  print('ID: $id');
  print('Nombre: ${Utilidades.capitalizar(nombre)} ${Utilidades.capitalizar(apellido)}');
  print('Edad: $edad años');
  print('Email: ${nombre.toLowerCase()}.${apellido.toLowerCase()}@email.com');
}

// =============================================
// RESUMEN FINAL
// =============================================

/*
PUNTOS CLAVE PARA EL EXAMEN:

1. FUNCIONES:
   - Parámetros posicionales vs nombrados {}
   - Parámetros opcionales [] y requeridos required
   - Funciones arrow => para una línea
   - Funciones anónimas: (param) => expresión

2. CLASES:
   - Constructores: básicos, con nombre, constantes, factory
   - Herencia: extends, @override
   - Mixins: with para "herencia múltiple"
   - Abstractas: no se instancian, definen contratos

3. VISIBILIDAD:
   - En Dart no hay public/private/protected como Java
   - Público: sin prefijo
   - Privado: empieza con _ (solo visible en el mismo archivo)

4. EXCEPCIONES:
   - try-catch-on-finally para manejo de errores
   - Crear excepciones personalizadas con implements Exception
   - throw para lanzar, rethrow para relanzar
   - assert para verificaciones en modo debug

5. MÉTODOS ÚTILES:
   - Random().nextInt() para números aleatorios
   - DateTime para manejo de fechas
   - RegExp para validaciones con expresiones regulares
   - Métodos de String: toUpperCase(), toLowerCase(), split(), etc.

6. IMPORTANTE:
   - late: para variables que se inicializan después
   - final: asignación única
   - const: constante en tiempo de compilación
   - static: pertenece a la clase, no a la instancia

¡MUCHA SUERTE EN EL EXAMEN!
*/