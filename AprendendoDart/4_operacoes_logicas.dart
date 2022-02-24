void main() {
    
  bool a = true;
  bool b = false;
  
  print(a && b); //e  => Falso pois um deles é Falso
  print(a || b); //ou => Verdadeiro, pois b é Verdadeiro
  print(a == b); //é igual (lógica)  => verifica se ambos possuem o mesmo valor
  print(a != b); //é diferente (lógica) => veriica se são diferentes
  
  int x = 1;
  int y = 3;
  
  print(x > y); //compara se é x maior que y
  print(x >= y); //compara se x é maior OU igual y
  
  print(x < y); //compara se é x é menor que y
  print(x <= y); //compara se x é menor OU igual a y
  
  print(x == y); //compara se são iguais
  //=== não existe no Dart
  
}