import 'package:ejercicio4/cuentaBancaria.dart';
void main() {
  // Crear objetos de cada tipo de cuenta
  CuentaDebito cuentaDebito = CuentaDebito(12345, "Ana García");
  CuentaCredito cuentaCredito = CuentaCredito(67890, "Carlos López");
  
  print("=== PRUEBAS CON CUENTA DÉBITO ===");
  print("Estado inicial:");
  print(cuentaDebito);
  
  print("\n--- Depósito de dinero ---");
  cuentaDebito.depositarDinero(1000);
  print(cuentaDebito);
  
  print("\n--- Extracción de dinero ---");
  cuentaDebito.extraerDinero(300);
  print(cuentaDebito);
  
  print("\n--- Intento de extracción con saldo insuficiente ---");
  cuentaDebito.extraerDinero(800);
  print(cuentaDebito);
  
  print("\n=== PRUEBAS CON CUENTA CRÉDITO ===");
  print("Estado inicial:");
  print(cuentaCredito);
  
  print("\n--- Depósito de dinero ---");
  cuentaCredito.depositarDinero(500);
  print(cuentaCredito);
  
  print("\n--- Extracción dentro del límite de crédito ---");
  cuentaCredito.extraerDinero(700); // 500 - 700 = -200 (dentro del límite de -500)
  print(cuentaCredito);
  
  print("\n--- Intento de extracción excediendo límite de crédito ---");
  cuentaCredito.extraerDinero(400); // -200 - 400 = -600 (supera el límite de -500)
  print(cuentaCredito);
  
  print("\n=== TRANSFERENCIA ENTRE CUENTAS ===");
  print("--- Transferencia exitosa ---");
  cuentaDebito.transferirDinero(cuentaCredito, 200);
  print("Cuenta Débito después de transferencia:");
  print(cuentaDebito);
  print("Cuenta Crédito después de transferencia:");
  print(cuentaCredito);
  
  print("\n--- Intento de transferencia con saldo insuficiente ---");
  cuentaDebito.transferirDinero(cuentaCredito, 1000);
  print("Cuenta Débito después de intento fallido:");
  print(cuentaDebito);
  
  print("\n=== ESTADO FINAL DE LAS CUENTAS ===");
  print("Cuenta Débito final:");
  print(cuentaDebito);
  print("Cuenta Crédito final:");
  print(cuentaCredito);
}