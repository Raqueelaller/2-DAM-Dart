void main() {
  for (int num = 1; num <= 10; num++) {
    print('Tabla del $num:');
    for (int i = 1; i <= 10; i++) {
      print('$num x $i = ${num * i}');
    }
    print(''); // Línea en blanco para separar las tablas
  }
}