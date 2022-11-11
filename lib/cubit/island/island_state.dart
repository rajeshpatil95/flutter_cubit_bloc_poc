part of 'island_cubit.dart';

@immutable
abstract class IslandState {}

class IslandInitial extends IslandState {}

class IslandLoaded extends IslandState {
  final List<IslandModel>? Island;

  IslandLoaded({this.Island});
}
