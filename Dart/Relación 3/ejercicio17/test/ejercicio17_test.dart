import 'package:ejercicio17/ejercicio17.dart';
import 'package:test/test.dart';
import 'package:ejercicio17/validaciones.dart';

void main() {
  test('verifica el correo', () {
    expect(esCorreoValido("correo@gamil.com"),isTrue );
        expect(esCorreoValido("correo"),isFalse );

  });

    test('verifica la URL', () {
    expect(esURLValida("http:hoola.com"),isTrue );
        expect(esURLValida("correo"),isFalse );

  });

    test('verifica el color', () {
    expect(esColorRGBValido("#FF0000"),isTrue );
        expect(esColorRGBValido("correo"),isFalse );

  });


    test('verifica el DNI', () {
    expect(esDNIVerdadero("79291203Z"),isTrue );
        expect(esDNIVerdadero("correo"),isFalse );

  });
  
  
}
