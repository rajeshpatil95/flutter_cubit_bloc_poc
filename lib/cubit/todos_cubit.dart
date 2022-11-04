import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../models/island.dart';
import '../services/repository.dart';
part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  final IslandRepository? repository;

  TodosCubit({this.repository}) : super(TodosInitial());

  void fetchTodos() async {
    List<IslandModel>? islandList = await repository?.fetchIslands();
    emit(TodosLoaded(todos: islandList as List<IslandModel>));
  }
}
