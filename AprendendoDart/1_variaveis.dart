//variáveis
void main() {
  
  //variáveis comuns:
  int idade = 34; //inteira
  String nome = "Thiago Traue"; //texto
  //bool fumante = false; //booleano
  double saldoEmConta = 0.99; //real
  
  //print("Olá " + nome);
  //é o mesmo que escrever assim:
  //com interpolação
  //print("Olá $nome");
  
  print("O $nome tem $idade anos e possui $saldoEmConta na conta!");
  
  //a variável do tipo "var" assume o PRIMEIRO tipo do valor que recebe e não pode ter seu tipo alterado
  var bla = "10";
  
  
  print(bla);
  
  //oficialmente isso não pode ser feito
  //pois essa variável recebeu um valor inteiro primeiro
  bla = "oi";
  //bla = true; //não pode trocar o tipo em tempo de execução
  print(bla);
  
  //um tipo que pode ser alterado dinamicamente é a "dynamic"
  dynamic x = "Oi mundo";
  
  print(x);
  
  x = 10; //pode trocar o tipo dela a qualuqer momento
  
  print(x);
}