import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterdemoapp/todo-app/model/todo.dart';
import 'package:flutterdemoapp/todo-app/view_model/todo_view_model.dart';
import 'package:intl/intl.dart';

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
  TextEditingController _dateController = TextEditingController();

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
                validator: (value) => widget.viewModel.todoValidator(value),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  debugPrint('startTime: ${widget.viewModel.startTime}');
                  widget.viewModel.startTime = await showDatePicker(
                      context: context,
                      firstDate: DateTime(1900),
                      initialDate: DateTime.now(),
                      lastDate: DateTime(2100));
                  debugPrint('startTime: ${widget.viewModel.startTime}');
                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Start Time',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: ScreenUtil().setSp(32),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.calendar_today,
                            size: ScreenUtil().setSp(42),
                          ),
                          const SizedBox(width: 30),
                          Text(
                            '${widget.viewModel.startTime}',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: ScreenUtil().setSp(32),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DateTimeField(
                controller: _dateController,
                format: DateFormat("yyyy-MM-dd"),
                decoration: InputDecoration(
                  hintText: 'End Time',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: ScreenUtil().setSp(32),
                  ),
                ),
                onShowPicker: (context, currentValue) async {
                  return showDatePicker(
                      context: context,
                      firstDate: DateTime(1900),
                      initialDate: currentValue ?? DateTime.now(),
                      lastDate: DateTime(2100));
                },
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
                validator: (value) => widget.viewModel.todoValidator(value),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _btnDoneOnPress() {
    if (_textFormKey.currentState.validate()) {
//      debugPrint('date: ${_dateController.text}');
      Todo todo = Todo(
          title: _titleController.text.trim(),
          date: _dateController.text.trim(),
          content: _contentController.text.toString());
      widget.viewModel.addTodo(todo);
      Navigator.of(context).pop();
    }
  }
}
