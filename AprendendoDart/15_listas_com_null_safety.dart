void main() {
  List<String> minhaLista = []; //a lista é constuída vazia

  minhaLista.add('Bla');

  print(minhaLista);

  List<String>? minhaLista2;

  if (minhaLista2 != null) {
    minhaLista2.add('Uninove');
  } else {
    minhaLista2 = [];
    minhaLista2.add('Programação mobile');
  }

  print(minhaLista2);

  List<String?> minhaLista3 = [];
  minhaLista3.add('Abobora');
  minhaLista3.add(null);
  print(minhaLista3);

  List<String?>? minhaLista4;
  //minhaLista4.add(null);
  if (minhaLista4 != null) {
    minhaLista4.add('Uninove');
  } else {
    minhaLista4 = [];
    minhaLista4.add(null);
  }
  
  print(minhaLista4);
}