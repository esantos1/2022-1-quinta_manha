class Pessoa {
  String? nome;
  int? idade;
  bool? fumante;
  double? altura;
 
//   Pessoa(String nome, int idade, bool fumante, double altura) {
//     this.nome = nome;
//     this.idade = idade;
//     this.altura = altura;
//     this.fumante = fumante;
//   } 
 
  //csontrutor
  Pessoa({required this.nome, this.idade, this.fumante, this.altura}) {
    print('A pessoa $nome foi criada na memória');
  }
 
  //named constructor
  Pessoa.eFumante({required this.nome, this.idade, this.altura, fumante = true});
  
  //ou assim:
  Pessoa.naoFumante({required this.nome, this.idade, this.altura}) {
    fumante = false;
  }
 
  int? fazerAniversario() {
    if (idade != null) {
      idade = idade! + 1;
      print('yeahh.. party!');
    }
  }
}
 
void main() {
  Pessoa p = Pessoa(nome: 'Romulo'); //Constructor person
  Pessoa p2 = Pessoa(nome: 'Juliana');
  Pessoa p3 = Pessoa(nome: 'Abelardinho', altura: 1.80);
  Pessoa p4 = Pessoa.eFumante(nome: 'Romulo');
  Pessoa p5 = Pessoa.naoFumante(nome: 'Juliana');
  p.nome = 'Romulo';
  p.idade = 33;
  p.fumante = true;
  p.altura = 1.88;
 
  p2.nome = 'Juliana';
  p2.idade = 37;
  p2.fumante = false;
  p2.altura = 1.69;
  print(p.nome);
 
  p2.fazerAniversario();
  p3.fazerAniversario();
 
  print(p2.idade);
  print(p3.idade);
}

//paramos aqui... falta: 
// - sets e gets
// - "late"
//passagem por valor e por referência
//...