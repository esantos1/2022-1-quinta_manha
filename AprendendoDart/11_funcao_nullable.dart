void main() {
  String resultado = falaNome('Rômulo') ?? 'Oi, fulano';

  print(resultado);
}

String? falaNome(String nome) {
  if (nome == 'Thiago') {
    return 'Olá Thiago';
  }
}