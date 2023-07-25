import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //when you subscrite background color in Scaffold DarkMode break
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ),
        canvasColor: Colors.purple,
      ),
      home: Scaffold(
        //backgroundColor: Colors.white70,
        appBar: AppBar(
          //backgroundColor: Colors.white10,
          title: Text("Exemplo"),
        ),
        body: Center(
          child: Text('Texto',
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
