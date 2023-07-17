import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Exemplo Scaffold")),
      body: Row(
        //alinhamento  entre cada elemento no row
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: Text("Meu aplicativo",
              style: TextStyle(fontSize: 20),)),
          Center(
            child: Text("Exemplo",
              style: TextStyle(fontSize: 20),)),
          Center(
            child: Text("Exemplo2",
              style: TextStyle(fontSize: 20),)),
        ],
      ),
    ));
  }
}
