import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Texto\nTexto2',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 50,
              height: 1.15, //distance between fonts, proportional
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
              color: Colors.black,
              backgroundColor: Colors.yellow.shade700,
              decoration: TextDecoration.underline
            )),
      ),
    );
  }
}
