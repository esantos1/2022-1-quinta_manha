void main() {
  List<String> alunos = [
    'Romulo',
    'Salomão',
    'Guilherme',
    'Ricardo',
    'Augusto',
    'Adson'
  ];

  //print(alunos);

  //iteração com for simples:
//   for(int i = 0; i < alunos.length; i++) {
//     print(alunos[i].toUpperCase());
//   }

  //foreach
//   for(String nome in alunos) {
//     print(nome);
//   }

  //sublist com foreach interno
  alunos.sublist(2, 4).forEach((nome) {
    print(nome.toLowerCase());
  });
}