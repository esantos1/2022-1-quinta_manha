import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Etanol ou Gasolina?',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              Icon(
                Icons.local_gas_station_rounded,
                size: 130,
                color: Colors.lightBlue[900],
              ),
              const SizedBox(height: 40),
              TextFormField(
                textAlign: TextAlign.center,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                    labelText: 'Valor do Etanol',
                    labelStyle: TextStyle(color: Colors.blue[900])),
                style: TextStyle(color: Colors.lightBlue[800], fontSize: 26),
              ),
              const SizedBox(height: 10),
              TextFormField(
                textAlign: TextAlign.center,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                    labelText: 'Valor da Gasolina',
                    labelStyle: TextStyle(color: Colors.blue[900])),
                style: TextStyle(color: Colors.lightBlue[800], fontSize: 26),
              )
            ],
          )),
      //paramos aqui...
    );
  }
}
