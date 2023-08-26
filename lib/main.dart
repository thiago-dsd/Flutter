import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  final future = http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
      Map<String, dynamic> dados = json.decode(response.body);
      Todo todo = Todo.fromJson(dados);
      print(todo.toJson());
    } else {
      print("Erro");
    }
  });
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(json['userId'], json['id'], json['title'], json['completed']);
  }

  Map<String, dynamic> toJson() => {
        'userId': this.userId,
        'id': this.id,
        'title': this.title,
        'completed': this.completed,
      };
}
