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

  print('----'); //só para quebrar a linha
  compras.add('Chocolate'); //sempre acrescenta ao final da lista
  compras.addAll(['Abacate', 'Xuxu']);

  //você informa o índice e o Dart joga todos os demais indices para "frente"
  //o índice deve ser no máximo o tamanho da lista
  compras.insert(2, 'Nutella');
  //print(compras);
  //print(compras.length);

  //função para ordenar a lista em ordem alfabetica
  compras.sort((a, b) => a.compareTo(b));

  print(compras);

  print(compras.contains('Abobrinha') ? 'Tem abobrinha' : 'Não tem abobrinha');
  print(compras.contains('Chocolate') ? 'Tem chocolate' : 'Não tem chocolate');
  
  //removendo da lista... 
  //há duas formas: por índice ou por valor
  
  //por valor
  print(compras.remove('Chocolate')); //retorna true (se remover) ou false (se não remover)
  print(compras);
  
  
  //por índice:
  print(compras.removeAt(0)); //retorna o objeto removido
  print(compras);
}