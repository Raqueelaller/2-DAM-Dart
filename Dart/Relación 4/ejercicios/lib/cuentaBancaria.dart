abstract class Cuentabancaria {
  int numeroCuenta;
  String nombreTitular;
  double saldo=0;
  int numeroOperaciones=0;

  Cuentabancaria(this.numeroCuenta,this.nombreTitular);

@override
  String toString(){
    String mensaje = "Número de cuenta $numeroCuenta, Titular de la cuenta: $nombreTitular, Saldo actual: $saldo, Número de operaciones realizadas: $numeroOperaciones";
    return mensaje;
  }

  void depositarDinero(double dinero){
    if(dinero>0){
      saldo=saldo+dinero;
      numeroOperaciones=numeroOperaciones+1;
    }else{
      print("no se puede depositar dinero en negativo");
    }

  }

  void extraerDinero(double dinero){
      saldo=saldo-dinero;
      numeroOperaciones=numeroOperaciones+1;

  }
    void transferirDinero (Cuentabancaria otraCuenta, double dinero){
      saldo=saldo-dinero;
      otraCuenta.saldo=otraCuenta.saldo+dinero;
      numeroOperaciones=numeroOperaciones+1;
    }

  }

  class CuentaDebito extends Cuentabancaria{

    CuentaDebito(int numeroCuenta,String nombreTitular): super(numeroCuenta,nombreTitular);

    @override
    String toString(){
    String mensaje = "Cuenta Débito, Número de cuenta $numeroCuenta, Titular de la cuenta: $nombreTitular, Saldo actual: $saldo, Número de operaciones realizadas: $numeroOperaciones";
    return mensaje;
  }

    @override
    void extraerDinero(double dinero){
      if(saldo>dinero){
        saldo=saldo-dinero;
        numeroOperaciones=numeroOperaciones+1;
      }else{
        print("Saldo insuficiente");
      }
    }
    @override
    void transferirDinero (Cuentabancaria otraCuenta, double dinero){
      if(saldo>dinero){
        saldo=saldo-dinero;
        otraCuenta.saldo=otraCuenta.saldo+dinero;
        numeroOperaciones=numeroOperaciones+1;
      }else{
        print("Saldo insuficiente");
      }
    }

  }

    class CuentaCredito extends Cuentabancaria{

    CuentaCredito(int numeroCuenta,String nombreTitular): super(numeroCuenta,nombreTitular);

    @override
    String toString(){
    String mensaje = "Cuenta Crédito, Número de cuenta $numeroCuenta, Titular de la cuenta: $nombreTitular, Saldo actual: $saldo, Número de operaciones realizadas: $numeroOperaciones";
    return mensaje;
  }
    @override
    void extraerDinero(double dinero){
      if(saldo-dinero>-500){
        saldo=saldo-dinero;
        numeroOperaciones=numeroOperaciones+1;
      }else{
        print("Saldo insuficiente");
      }
    }
    @override
    void transferirDinero (Cuentabancaria otraCuenta, double dinero){
      if(saldo-dinero>-500){
        saldo=saldo-dinero;
        otraCuenta.saldo=otraCuenta.saldo+dinero;
        numeroOperaciones=numeroOperaciones+1;
      }else{
        print("Saldo insuficiente");
      }
    }
    
  }
