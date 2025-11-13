bool esColorRGBValido(String color) {
  final RegExp regex = RegExp(r'^#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{6})$');
  return regex.hasMatch(color);
}

bool esURLValida(String url) {
  final RegExp regex = RegExp(r'^http([s]*):([A-Za-z0-9]+)\.([A-Za-z]+)$');
  return regex.hasMatch(url);
}

bool esCorreoValido(String correo) {
  final RegExp regex = RegExp(r'([A-Za-z0-9]+)\@([A-Za-z]+)\.([A-Za-z]+)$');
  return regex.hasMatch(correo);
}

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