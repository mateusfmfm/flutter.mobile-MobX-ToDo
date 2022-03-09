import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_todo/models/todo.dart';

part 'list_controller.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store {
  final TextEditingController addTodoTextController = TextEditingController();

  @observable
  String newTodoTitle = "";

  @observable
  ObservableList<Todo> todoList = ObservableList<Todo>();

  @observable
  bool isTodoConclude = false;

  @action
  void setNewTodoTitle(String v) => newTodoTitle = v;

  @action
  void addTodo() {
    todoList.insert(0, Todo(newTodoTitle));
    addTodoTextController.clear();
    newTodoTitle = "";
  }

  @action
  void toggleTodoConclude() => isTodoConclude = !isTodoConclude;

  @computed
  VoidCallback? get addTodoPressed => isFormValid ? addTodo : null;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;
}
