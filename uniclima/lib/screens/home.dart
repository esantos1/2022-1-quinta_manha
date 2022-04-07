import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:http/http.dart' as http;
import 'package:uniclima/model/clima_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late ClimaModel climaModel;

  final List<String> _cidades = [
    "Aracaju",
    "Belém",
    "Belo Horizonte",
    "Boa Vista",
    "Brasilia",
    "Campo Grande",
    "Cuiaba",
    "Curitiba",
    "Florianópolis",
    "Fortaleza",
    "Goiânia",
    "João Pessoa",
    "Macapá",
    "Maceió",
    "Manaus",
    "Natal",
    "Palmas",
    "Porto Alegre",
    "Porto Velho",
    "Recife",
    "Rio Branco",
    "Rio de Janeiro",
    "Salvador",
    "São Luis",
    "São Paulo",
    "Teresina",
    "Vitória"
  ];

  String _cidadeSelecionada = "São Paulo";

  carregaClima() async {

    const String _apiURL = "api.openweathermap.org"; //link da API
    const String _path = "/data/2.5/weather"; //a pasta da API
    const String _appid = ""; //SUA chave de API
    const String _units = "metric";
    const String _lang = "pt_br";

    final _parametros = {
      "q": _cidadeSelecionada,
      "appid": _appid,
      "units": _units,
      "lang": _lang
    };

    final climaResponse = await http.get(Uri.https(_apiURL, _path, _parametros));

    //apenas para fins de depuração... não é exibido para o usuário em momento algum
    print("URL gerada = " + climaResponse.request!.url.toString());

    if(climaResponse.statusCode == 200) { 
      climaModel = ClimaModel.fromJson(jsonDecode(climaResponse.body));
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var screenPadding = MediaQuery.of(context).padding;

    return Scaffold(
      appBar: AppBar(
        title: Text(_cidadeSelecionada),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            DropdownSearch<String>(
              mode: Mode.MENU,
              showSelectedItems: true,
              items: _cidades,
              showSearchBox: true,
              maxHeight: height - screenPadding.bottom,
              dropdownSearchDecoration: InputDecoration(
                hintText: _cidadeSelecionada,
                contentPadding: const EdgeInsets.only(left: 20),
              ),
              onChanged: (value) {
                setState(() {
                  _cidadeSelecionada = value!;
                  carregaClima();
                });
              },
              emptyBuilder: (context, searchEntry) => const Center(
                  child: Text('Cidade não encontrada',
                      style: TextStyle(color: Colors.blue))),
            )
          ],
        ),
      ),
    );
  }
}
