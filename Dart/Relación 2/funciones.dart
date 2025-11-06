double temperaturaMaxima(List<double> listaTemperatura){
  double temperaturaMaxima=0;
  for(int i=0; i<listaTemperatura.length ; i ++){
    if(listaTemperatura.elementAt(i)>temperaturaMaxima){
      temperaturaMaxima=listaTemperatura.elementAt(i);
    }
  }
  return temperaturaMaxima;
}

double temperaturaMinima(List<double> listaTemperatura){
  double temperaturaMinima=9999;
  for(int i=0; i<listaTemperatura.length ; i ++){
    if(listaTemperatura.elementAt(i)<temperaturaMinima){
      temperaturaMinima=listaTemperatura.elementAt(i);
    }
  }
  return temperaturaMinima;
}

double mediaTemperaturas(List<double> listaTemperatura){
  double suma =0;
  double media=0;
  for(int i=0; i<listaTemperatura.length; i++){
    suma=listaTemperatura.elementAt(i)+suma;
  }
  media=suma/listaTemperatura.length;

  return media; 
}