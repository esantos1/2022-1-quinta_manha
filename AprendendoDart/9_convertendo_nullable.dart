void main() {
  falarNome('Thiago');
}

void falarNome(String nome, {String? sobrenome}) {
  //se o sobrenome é nulo, então ele pega o que está após o "??"
  String sobre = sobrenome ?? 'Silva'; 

  print('Olá $nome $sobre, seja muito bem-vindo(a)!');
}