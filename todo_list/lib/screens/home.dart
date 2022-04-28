import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _todoController = TextEditingController();
  List _todoList = [];

  Future<File> _abreArquivo() async {
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/todoList.json");
  }

  Future<String?> _lerDados() async {
    try {
      final arquivo = await _abreArquivo();
      return arquivo.readAsString();
    } catch (e) {
      return null;
    }
  }

  Future<File> _savarDados() async {
    String dados = json.encode(_todoList);
    final arquivo = await _abreArquivo();
    return arquivo.writeAsString(dados);
  }

  void _adicionaTarefa() {
    setState(() {
      Map<String, dynamic> tarefa = {};
      tarefa["titulo"] = _todoController.text;
      tarefa["realizado"] = false;
      _todoList.add(tarefa);
      _todoController.clear();
      _savarDados();
    });
  }

  Widget widgetTarefa(BuildContext context, int index) {
    return Container();
    //paramos aqui...
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(18, 1, 7, 1),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: _todoController,
                  maxLength: 90,
                  decoration: const InputDecoration(labelText: "Nova Tarefa"),
                )),
                SizedBox(
                  height: 36,
                  width: 36,
                  child: FloatingActionButton(
                    child: const Icon(Icons.save_outlined),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
