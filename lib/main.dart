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
          appBar: AppBar(
            title: Text("Imagens"),
          ),
          body: Image.network(
              "https://img.freepik.com/fotos-gratis/beagles-filhotes-procurando-algo_1150-18193.jpg",
              fit: BoxFit.fitWidth,
              width: double.infinity,
              height: double.infinity,
              )
          ),
    );
  }
}
