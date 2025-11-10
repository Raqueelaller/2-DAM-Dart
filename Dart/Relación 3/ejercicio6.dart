/* 6- Haz un pequeño programa que Dart que te pida una frase por la entrada estándar y te la
muestre con las palabras en orden contrario. Y también la frase en orden inverso carácter a
carácter. También que te diga si la frase es un palíndromo (por ejemplo: ‘Dabale arroz a la
zorra el abad’ debería dar positivo)
*/

import 'dart:io';

void main() {
  try {
    print('Introduce una frase: ');
    String? frase = stdin.readLineSync();

    if (frase == null || frase.trim().isEmpty) {
      print('No se introdujo ninguna frase.');
      return;
    }

    frase = frase.trim();

    mostrarPalabrasInvertidas(frase);
    mostrarCaracteresInvertidos(frase);
    comprobarPalindromo(frase);
  } catch (e) {
    print('Ocurrió un error: $e');
  }
}

/// Muestra la frase con las palabras en orden contrario
void mostrarPalabrasInvertidas(String frase) {
  try {
    List<String> palabras = frase.split(' ');
    String invertida = palabras.reversed.join(' ');
    print('\nFrase con palabras en orden contrario:');
    print(invertida);
  } catch (e) {
    print('Error al invertir las palabras: $e');
  }
}

/// Muestra la frase invertida carácter a carácter
void mostrarCaracteresInvertidos(String frase) {
  try {
    String invertida = frase.split('').reversed.join('');
    print('\nFrase invertida carácter a carácter:');
    print(invertida);
  } catch (e) {
    print('Error al invertir los caracteres: $e');
  }
}

/// Comprueba y muestra si la frase es un palíndromo
void comprobarPalindromo(String frase) {
  try {
    String normalizada = frase
        .toLowerCase()
        .replaceAll(' ','');
    String invertida = normalizada.split('').reversed.join('');

    if (normalizada == invertida) {
      print('\nLa frase es un palíndromo.');
    } else {
      print('\nLa frase no es un palíndromo.');
    }
  } catch (e) {
    print('Error al comprobar el palíndromo: $e');
  }
}
