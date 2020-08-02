import 'package:flutterdemoapp/todo-app/model/todo.dart';
import 'package:flutterdemoapp/ui/view_model/base_view_model.dart';

class TodoViewModel extends BaseViewModel {
  List<Todo> _todoList = [];

  List<Todo> get todoList => _todoList;

  set todoList(List<Todo> value) {
    _todoList = value;
    notifyListeners();
  }

  void addTodo(Todo todo) {
    todoList.add(todo);
  }
}