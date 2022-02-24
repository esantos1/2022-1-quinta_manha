void main() {
  criaBotao(
    'Salvar',
    acaoDoBotao, //passando uma função nomeada para outra
    largura: 200, 
    altura: 20,
    cor: 'Rosa'
  );
  
  print('------'); //só para quebrar a linha...
  
  criaBotao(
    'Editar',
    () {  //função anônima
      print('\tUi! Cliquei em editar!');
    },
    largura: 250, 
    altura: 10,
    cor: 'Preto'
  );
}

void acaoDoBotao() {
  print('\tUi!, fui clicado');
}

void criaBotao(String texto, Function acao, {String? cor, int? largura, int? altura}) {
  print('Estou criando um botão...');
  print(' - Texto: $texto');
  print(' - Cor: ${cor ?? 'Cinza'}');
  print(' - Largura: ${largura ?? 100}');
  print(' - Altura: ${altura ?? 50}');
  print(' - Execução da Ação:');
  acao();
}