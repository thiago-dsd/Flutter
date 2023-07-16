import 'package:flutter/material.dart';

/*
  Scaffold - significa andaime em inglês
*/
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplicativo Olá Mundo"),
        ),
        body:Center(
          child: Text(
              "Olá mundo",
              style: TextStyle(fontSize: 20,color: Colors.black,
              )
          ),
        ),
      ),
    ),
  );
}
