// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListController on ListControllerBase, Store {
  Computed<VoidCallback?>? _$addTodoPressedComputed;

  @override
  VoidCallback? get addTodoPressed => (_$addTodoPressedComputed ??=
          Computed<VoidCallback?>(() => super.addTodoPressed,
              name: 'ListControllerBase.addTodoPressed'))
      .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: 'ListControllerBase.isFormValid'))
          .value;

  final _$newTodoTitleAtom = Atom(name: 'ListControllerBase.newTodoTitle');

  @override
  String get newTodoTitle {
    _$newTodoTitleAtom.reportRead();
    return super.newTodoTitle;
  }

  @override
  set newTodoTitle(String value) {
    _$newTodoTitleAtom.reportWrite(value, super.newTodoTitle, () {
      super.newTodoTitle = value;
    });
  }

  final _$todoListAtom = Atom(name: 'ListControllerBase.todoList');

  @override
  ObservableList<Todo> get todoList {
    _$todoListAtom.reportRead();
    return super.todoList;
  }

  @override
  set todoList(ObservableList<Todo> value) {
    _$todoListAtom.reportWrite(value, super.todoList, () {
      super.todoList = value;
    });
  }

  final _$isTodoConcludeAtom = Atom(name: 'ListControllerBase.isTodoConclude');

  @override
  bool get isTodoConclude {
    _$isTodoConcludeAtom.reportRead();
    return super.isTodoConclude;
  }

  @override
  set isTodoConclude(bool value) {
    _$isTodoConcludeAtom.reportWrite(value, super.isTodoConclude, () {
      super.isTodoConclude = value;
    });
  }

  final _$ListControllerBaseActionController =
      ActionController(name: 'ListControllerBase');

  @override
  void setNewTodoTitle(String v) {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.setNewTodoTitle');
    try {
      return super.setNewTodoTitle(v);
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleTodoConclude() {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.toggleTodoConclude');
    try {
      return super.toggleTodoConclude();
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newTodoTitle: ${newTodoTitle},
todoList: ${todoList},
isTodoConclude: ${isTodoConclude},
addTodoPressed: ${addTodoPressed},
isFormValid: ${isFormValid}
    ''';
  }
}
