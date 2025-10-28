enum ColorArcoiris { rojo, verde, azul,naranja,amarillo,violeta }

main() {
 
  for(var color in ColorArcoiris.values){
    print(color.name);
  }

  print("El color que está en la posición 2 es: "+ColorArcoiris.values[1].name);

  ColorArcoiris color = ColorArcoiris.values.byName("verde");
  print(color);
  
  
    var color1 = ColorArcoiris.values.byName('negro');
    print(color1);
  

}