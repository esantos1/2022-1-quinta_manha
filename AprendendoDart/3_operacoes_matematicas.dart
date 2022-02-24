void main() {
  
  double x = 1.5;
  double y = 2.5;
  int z = 2;
  
  double resultado = x + y * z;
  print(resultado);
  //se somar primeiro, o resultado seria 8
  //se multiplicar primeiro, o resultado seria 6.5 
  //o resultado foi 6.5, portanto o Dart "sabe" o peso das operações
  
  //se quiser, somar primeiro, é preciso utilizar parênteses...
  resultado = (x + y) * z;
  print(resultado);
  
  int a = 212312329;
  int restoDivisao = a % 2; //% = MOD, ou seja, RESTO da divisão
  bool ePar = restoDivisao == 0 ? true : false;
  
  print('$a dividido por 2, gera o resto $restoDivisao');
  
  print('Portanto, esse número é ${ePar ? 'par' : 'ímpar'}');

}