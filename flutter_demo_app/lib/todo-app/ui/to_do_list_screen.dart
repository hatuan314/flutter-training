import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterdemoapp/common/route_list.dart';
import 'package:flutterdemoapp/todo-app/model/todo.dart';
import 'package:flutterdemoapp/todo-app/view_model/todo_view_model.dart';

class TodoListScreen extends StatelessWidget {
  final TodoViewModel viewModel;

  const TodoListScreen({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Container(
        color: Colors.grey[50],
        child: ListView.builder(
            itemCount: viewModel.todoList.length,
            itemBuilder: (context, int index) {
              return _todoItem(context, todo: viewModel.todoList[index]);
            }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _btnAddOnPress(context),
          child: Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }

  Widget _todoItem(BuildContext context, {Todo todo}) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(RouteList.todoDetail, arguments: {'todo': todo}),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        elevation: 10,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('${todo.title}',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(36))),
              const SizedBox(
                height: 5,
              ),
              Text('${todo.date}',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: ScreenUtil().setSp(32))),
              const SizedBox(
                height: 5,
              ),
              Text('${todo.content}',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: ScreenUtil().setSp(32))),
            ],
          ),
        ),
      ),
    );
  }

  _btnAddOnPress(BuildContext context) {
    Navigator.pushNamed(context, RouteList.createTodo, arguments: {'todoViewModel': viewModel});
  }
}
