/*3- Crea una clase Pila que contenga como atributos (privados):
a. Una lista de enteros llamada pila
b. Un tamaño máximo de la pila, llamado longitud
c. Un número de elementos en la pila, llamado ítems
Y como métodos:
a. El constructor, que iniciará la lista pila a vacía, los ítems a 0 y el tamaño será su único parámetro
b. Un método push, que añada un elemento a la pila por un extremo. Si la pila estuviera ya llena, devolverá null. No devolverá nada en otro caso
c. Un método pop que extraiga un elemento de la pila. Devolverá ese elemento, salvo que la pila esté vacía, en cuyo caso, devolverá null
d. Un método getPila que obtenga la pila completa en un momento dado*/

class Pila{

   List<int> _pila;
   int _longitud;
   int _items;

  Pila(int longitud){
      this._longitud=longitud;
      _pila=[];
      _items=0;
    }
    
void push(int elemento){
    _items=elemento;
    if(_pila.elementAtOrNull(_longitud)==null){
          _pila.add(_items);
          _items=_items+1;
          print("elemento insertado correctamente");
    }else{
      throw ArgumentError(null)  ;
    }
  }
      int pop(){
        int numero=0;
        if(_pila.isEmpty==false){
              numero=_pila.removeLast();
              _items=_items-1;
            print("se ha eliminado el elemento $numero de la pila");
        }
        return numero;

    }  

  void getPila(){
    for(int i=0; i<_pila.length;i++){
      print(_pila.elementAt(i));
    }
  }


  
}

  
  


  