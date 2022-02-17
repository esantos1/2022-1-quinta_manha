void main() {
  String nome = "Thiago Traue";
  bool fumante = false;
  
  //desvio condicional
  //if(fumante) {
  //  print("O $nome é fumante!");
  //} else {
  //  print("O $nome não fuma!");
  //}
  
  //é o mesmo que escrever assim:
  
  //ternário:
  //<condição> ? <ação se true> : <ação se false>
  
  //fumante ? print("É fumante") : print("Não fuma!");
  //ou
  print(fumante ? "$nome Fuma muito" : "$nome não fuma");
  
  //switch:
  int x = 30;
  
  switch(x) {
    case 10: 
      print("É 10!");
      break;
    case 20:
      print("É 20!");
      break;
    default:
      print("Não deu");
      break;
  } 
}