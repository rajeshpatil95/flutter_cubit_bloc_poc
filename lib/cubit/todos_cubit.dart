import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../models/todo.dart';
import '../services/repository.dart';
part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  final Repository? repository;

  TodosCubit({this.repository}) : super(TodosInitial());

  void fetchTodos() async {
    List<TodoModel>? todoList = await repository?.fetchTodos();
    emit(TodosLoaded(todos: todoList as List<TodoModel>));
  }
}
