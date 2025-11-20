
mixin Comparable<T> {
  bool esMayorQue(T otro);
  bool esMenorQue(T otro);
  bool esIgualA(T otro);
  
  // Métodos con implementación por defecto
  bool esMayorOIgualQue(T otro) => esMayorQue(otro) || esIgualA(otro);
  bool esMenorOIgualQue(T otro) => esMenorQue(otro) || esIgualA(otro);
  bool esDistintoQue(T otro) => !esIgualA(otro);
}