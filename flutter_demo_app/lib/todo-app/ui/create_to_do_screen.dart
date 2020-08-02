import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterdemoapp/todo-app/model/todo.dart';
import 'package:flutterdemoapp/todo-app/view_model/todo_view_model.dart';

class CreateTodoScreen extends StatefulWidget {
  final TodoViewModel viewModel;

  const CreateTodoScreen({Key key, this.viewModel}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CreateTodoScreenState();
}

class _CreateTodoScreenState extends State<CreateTodoScreen> {
  GlobalKey<FormState> _textFormKey = GlobalKey();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Todo"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () => _btnDoneOnPress(),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(50)),
        child: Form(
          key: _textFormKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: 'Title',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: ScreenUtil().setSp(32),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.calendar_today,
                      size: ScreenUtil().setSp(42),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      '${DateTime.now()}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: ScreenUtil().setSp(32),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _contentController,
                decoration: InputDecoration(
                  hintText: 'Content',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: ScreenUtil().setSp(32),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _btnDoneOnPress() {
    Todo todo = Todo(
        title: _titleController.text.trim(),
        date: DateTime.now().toString(),
        content: _contentController.text.toString());
    widget.viewModel.addTodo(todo);
    Navigator.of(context).pop();
  }
}
