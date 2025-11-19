class Restaurant {
  final String name;
  final String cuisine;
  final List<double> ratings;

  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  int numeroRatings(){
   return ratings.length;
  }

  void anyadirRating(double nuevoRating){
    ratings.add(nuevoRating);
  }

  void anyadirVariosRatings(List<double> listaRating){
    ratings.addAll(listaRating);
  }

  double mediaRatings(){
    double media=0;
    double suma=0;
  for(int i=0; i<ratings.length; i ++){
    suma= suma+ratings.elementAt(i);
  }
  media=suma/ratings.length;
  return media;
  }
}
void main() {

  Restaurant resturante = const Restaurant(
    name:"chupa y tira",
    cuisine: "marisuqería",
    ratings: [4.5,3.8,5,4.3,3.8,4.9,4.8],
  );
  
  print("numero de rating: ${resturante.numeroRatings()}");
  print("media de ratings: ${resturante.mediaRatings()}");

  

}