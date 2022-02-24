void main() {
  List<String> compras = ['Banana', 'Maçã', 'Leite', 'Alface'];

  print(compras[0]);
  print(compras[1]);
  print(compras[2]);
  print(compras[3]);
  //print(compras[4]); //aqui da erro, pois não existe posição 4

  print('----'); //só para quebrar a linha

  //imprimindo com iteração:
  for (int i = 0; i < compras.length; i++) {
    print(compras[i]);
  }

    print('----'); //só para quebrar a linha

  //de trás para frente:
  for (int i = compras.length - 1; i >= 0; i--) {
    print(compras[i]);
  }
}