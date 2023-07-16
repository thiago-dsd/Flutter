import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(nome: "Pedro"));
}

class MyApp extends StatefulWidget {
  final String nome;
  const MyApp({super.key, this.nome=''});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salario = 7000;
  void aumentaSalario(int valor){
    setState(() {
      salario += valor;
    });
  }
  void diminuiSalario(int valor){
    setState(() {
      salario -= valor;
    });
  }
  void verificarSalario(){
    if (salario >= 7000 && salario <= 8000){
      aumentaSalario(200);
    } else {
      aumentaSalario(20);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap:() {
          verificarSalario();
        },
        child: Text("O salário de ${widget.nome} é $salario",
          textDirection: TextDirection.ltr,
        ),
      )
    );
  }
}