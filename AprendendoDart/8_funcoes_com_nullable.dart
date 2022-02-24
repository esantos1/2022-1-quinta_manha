void main() {
  falarNome('Robert');
  print('');
  falarNome('Robert', sobrenome: 'Azevedo');
  print('');

  //no flutter, qubraremos as linhas assim:
  falarNome('Thiago', mostrarHorario: false, sobrenome: 'Traue');
}

//o "?" permite que o sobrenome seja nulo (nullable)
void falarNome(String nome, {String? sobrenome, bool mostrarHorario = true}) {
  
  //cuidado, é preciso tratar a variável antes, na hora de acessá-la.
  if(sobrenome != null) {
    print('Olá $nome $sobrenome, seja muito bem-vindo(a)!');
  } else {
    print('Olá $nome, seja muito bem-vindo(a)!');
  }
  
  
  if (mostrarHorario) {
    print(DateTime.now());
  }
}
