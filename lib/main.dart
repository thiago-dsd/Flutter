import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Argumentos {
  final int id;
  final String nome;
  Argumentos(this.id, this.nome);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Tela1(),
        Tela2.routeName: (context) => Tela2(),
      },
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    int valor = 1;

    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Tela 1"),
          ),
          body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tela2',
                      arguments: Argumentos(valor, 'Daves $valor'));
                  valor++;
                },
                child: Text("Ir para a tela 2")),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  static const routeName = '/tela2';

  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos;

    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Tela 2" + argumentos.nome),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text("Ir para a tela 1")),
          ),
        ),
      ),
    );
  }
}
