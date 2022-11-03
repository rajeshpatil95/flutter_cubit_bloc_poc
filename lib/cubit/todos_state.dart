part of 'todos_cubit.dart';

@immutable
abstract class TodosState {}

class TodosInitial extends TodosState {}

class TodosLoaded extends TodosState {
  final List<IslandModel>? todos;

  TodosLoaded({this.todos});
}
