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
      body: Column(
        //alinhamento  entre cada elemento no row
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text("Coluna 1",
              style: TextStyle(fontSize: 20),)),
          Center(
            child: Text("Coluna 2",
              style: TextStyle(fontSize: 20, color: Colors.black26),)),
          Center(
            child: Text("Coluna 3",
              style: TextStyle(fontSize: 20),)),
        ],
      ),
    ));
  }
}
