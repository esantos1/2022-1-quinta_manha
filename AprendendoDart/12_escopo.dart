//essas variáveis estão no escopo GLOBAL (são acessíveis em qualquer função)
int c = 4;
int d = 8;

void main() {
  int x = 10; //essas variáveis estão em escopo LOCAL
  int y = 20;
  
  //função de escopo local (deve ser declarada antes de ser usada):
  double divide(double t, double r) {
    return t / r;
  }
  
  print(soma(x, y));
  print(multiplica(c, d));
  
  print(divide(10, 2));
  

}

//essa função está em escopo GLOBAL
int soma(int a, int b) {
  return a + b;
}

int multiplica(int q, int w) {
  print('C = $c');
  print('D = $d');
  return q * w;
}