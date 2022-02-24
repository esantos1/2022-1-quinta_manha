void main() {
  falarNome('Robert');
  print(''); //apenas para quebrar uma linha
  falarNome('Robert', sobrenome: 'Azevedo');
  print('');

  //no flutter, qubraremos as linhas assim:
  falarNome(
    'Thiago', 
    mostrarHorario: false, 
    sobrenome: 'Traue'
  );
}

void falarNome(String nome, {String sobrenome = 'Silva', bool mostrarHorario = true}) {
  print('Olá $nome $sobrenome, seja muito bem-vindo(a)!');
  
  if (mostrarHorario) {
    print(DateTime.now());
  }
}
