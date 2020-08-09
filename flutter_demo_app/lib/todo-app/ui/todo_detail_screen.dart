import 'package:flutter/material.dart';
import 'package:flutterdemoapp/todo-app/model/todo.dart';

class TodoDetailScreen extends StatelessWidget {
  final Todo todo;

  const TodoDetailScreen({Key key, this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('${todo.title}'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Date Time: ${todo.date}'),
            Text('Content: ${todo.content}')
          ],
        ),
      ),
    );
  }

}