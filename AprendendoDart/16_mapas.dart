void main() {
  Map<String, double?> notas = {
    'Salomão': 6.5,
    'Rômulo': 10,
    'Thiago': 8.5,
    'Fernanda': 9.5,
    'Ricardo': 9.3,
    'Fulano': null
  };

  double? notaFernanda = notas['Fernanda'];
  print(notaFernanda);

  print(notas);

  print(notas.containsKey('Salomão'));
  print(notas.containsValue(10));

  notas.remove('Rômulo');

  print(notas);

  print(notas.isNotEmpty ? 'A lista não está vazia' : 'A lista está vazia');

  //função de foreach para o mapa:
  notas.forEach((k, v) {
    //print('Chave: $k -> Valor: $v');
    print('Aluno: $k, ficou com a nota: $v');
  });

  //adiciona mais valores ao mapa:
  notas.addAll({'Beltrano': 6, 'Danillo': 0});
}