import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../models/island.dart';
import '../../services/island/repository.dart';
part 'island_state.dart';

class IslandCubit extends Cubit<IslandState> {
  final IslandRepository? repository;

  IslandCubit({this.repository}) : super(IslandInitial());

  void fetchIsland() async {
    List<IslandModel>? islandList = await repository?.fetchIslands();
    emit(IslandLoaded(Island: islandList as List<IslandModel>));
  }
}
