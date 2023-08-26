import'dart:async';
import 'package:http/http.dart' as http;

void main(){
  /* final uri = Uri.https("www.exempla.com", '/', {'q': 'flutter'}); */
  final uri = Uri.https("www.exempla.com");
  final future = http.get(uri);

  print(uri);

  future.then((response){
    if(response.statusCode == 200){
      print("Página carregada com sucesso!");
      print(response.body);
    }
    if(response.statusCode == 301){
      print("Página movida permanentemente!");
    }
    if(response.statusCode == 404){
      print("Página não encontrada!");
    }
    if(response.statusCode == 500){
      print("Erro interno no servidor!");
    }
  });

  future.catchError((onError) => print("Erro!"));
  future.whenComplete(() => print("Future completo!"));
}