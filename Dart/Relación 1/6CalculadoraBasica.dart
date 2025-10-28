import 'dart:io';
import 'dart:isolate';
void main(){

  int n1=5;
  int n2=6;
  String operador="+";
  int? resultado;
  if( n2==0 && (operador == "~/" || operador == "%")){
    resultado= null;
  }
  switch (operador) {
    case "+":
      resultado=n1+n2;
      break;
    case "-":
      resultado=n1-n2;
      break;
    case "*":
      resultado=n1*n2;
      break;
    case "%":
      resultado=n1%n2;
      break;
    case "~/":
      resultado=n1 ~/n2;
      break;
    default:
      resultado= null ;
  }

}
