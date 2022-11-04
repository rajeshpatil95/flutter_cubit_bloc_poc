import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/di_initializer.dart';
import '../utils/strings.dart';
import '../cubit/todos_cubit.dart';
import '../services/network_service.dart';
import '../services/repository.dart';
import '../presentation/add_todo_screen.dart';
import '../presentation/edit_todo_screen.dart';
import '../presentation/todos_screen.dart';

class AppRouter {
  late IslandRepository islandRepository;
  late TodosCubit todosCubit;

  AppRouter() {
    islandRepository = DI.inject<IslandRepository>();
    todosCubit = TodosCubit(repository: islandRepository);
  }

  MaterialPageRoute? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider.value(value: todosCubit, child: TodosScreen()));
      case EDIT_ISLAND_ROUTE:
        return MaterialPageRoute(builder: (_) => EditTodoScreen());
      case ADD_ISLAND_ROUTE:
        return MaterialPageRoute(builder: (_) => const AddTodoScreen());
      default:
        return null;
    }
  }
}
