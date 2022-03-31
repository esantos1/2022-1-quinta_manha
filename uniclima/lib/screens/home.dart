import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dropdown_search/dropdown_search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              //dropdownSearchTextAlign: TextAlign.center,
              dropdownSearchDecoration: InputDecoration(
                hintText: _cidadeSelecionada,
                contentPadding: const EdgeInsets.only(left: 50),
              ),
              onChanged: (value) {
                setState(() {
                  _cidadeSelecionada = value!;
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
