import 'package:flutter/material.dart';

void main(List<String> args) {
    runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

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
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.refresh))
        ],
      ),
    );
  }
}