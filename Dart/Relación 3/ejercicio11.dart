/*11- Ídem con DNIs españoles. Tendrá que comprobar que la letra es correcta . 
*/
bool esDNIVerdadero (String dni){
  bool bandera=true;
  dni=dni.trim().toUpperCase();
  final RegExp regex = RegExp(r'^\d{8}[A-Z]$');
  if(!regex.hasMatch(dni)){
      bandera=false;
  }
  else{
  List<String> letras =['T','R','W','A','G','M','Y','F','P','D','X','B','N','J','Z','S','Q','V','H','L','C','K','E'];

  String numeros = dni.substring(0,8);

  int numerosDni = int.parse(numeros);

  int resto = numerosDni%23;

  if(letras.elementAt(resto)!=dni.substring(8)){
    bandera=false;
  }

  }
  return bandera;
}

void main() {
  
  print(esDNIVerdadero('79291203a'));
}