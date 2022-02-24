void main() {
  /*existem, essencialmente, 3 variações para de funções
   * 
   *  - que não retornam nada (void)
   *  - que retornam (tipadas)
   *  - com ou sem parâmetros de entrada
   * 
   * */

  //chamando uma função:
  falarOlaMundo();
  falarNome('Thiago');
  print('O valor do PI é ${valorPi()}');
  print('A área do triângulo de base 3 e altura 4 é: ${areaTriangulo(3, 4)}');
}

//função vazia (que não retorna nada) e sem entrada de parâmetros:
void falarOlaMundo() {
  print('Olá mundo!');
}

//função vazia (que não retorna nada), mas COM entrada de parâmetro:
void falarNome(String nome) {
  print('Olá $nome, seja muito bem-vindo(a)');
}

//função que retorna um valor (neste caso do tipo double) e não possui entrada
double valorPi() {
  return 3.1415;
}

//função que retorna um valor (neste caso double) e POSSUI uma (ou mais) entradas
double areaTriangulo(int base, int altura) {
  double area = (base * altura) / 2;
  return area;
}
