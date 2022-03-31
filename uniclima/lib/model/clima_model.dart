class ClimaModel {
  final double temperatura;
  final double tempMin;
  final double tempMax;
  final double tempesesacaoTermica;
  final String descricao;
  final String icone;
  final int umidade;
  final int visibilidade;
  final int pressao;

  ClimaModel(
      {required this.temperatura,
      required this.tempMin,
      required this.tempMax,
      required this.tempesesacaoTermica,
      required this.descricao,
      required this.icone,
      required this.umidade,
      required this.visibilidade,
      required this.pressao});

//paramos aqui: Falta o construtor que permite a construção por um JSON

}
