import 'package:flutterdemoapp/todo-app/model/todo.dart';
import 'package:flutterdemoapp/ui/view_model/base_view_model.dart';

class TodoViewModel extends BaseViewModel {
  List<Todo> _todoList = [];
  DateTime _startTime = DateTime.now();

  DateTime get startTime => _startTime;

  set startTime(DateTime value) {
    _startTime = value;
    notifyListeners();
  }

  List<Todo> get todoList => _todoList;

  set todoList(List<Todo> value) {
    _todoList = value;
    notifyListeners();
  }

  void addTodo(Todo todo) {
    todoList.add(todo);
  }

  String todoValidator(String value) {
    if (value == null || value.isEmpty) {
      return 'is Empty';
    }
    return null;
  }
}