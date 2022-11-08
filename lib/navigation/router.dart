import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_bloc_poc/presentation/home/enter_postcode_screen.dart';
import 'package:flutter_cubit_bloc_poc/presentation/landing/landing_phone.dart';

import '../di/di_initializer.dart';
import '../presentation/home/discover_plans_screen.dart';
import '../presentation/home/home_screen.dart';
import '../presentation/landing/landing_page.dart';
import '../utils/strings.dart';
import '../cubit/island/island_cubit.dart';
import '../services/island/network_service.dart';
import '../services/island/repository.dart';
import '../presentation/island/add_island_screen.dart';
import '../presentation/island/edit_island_screen.dart';
import '../presentation/island/island_screen.dart';

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
        return MaterialPageRoute(builder: (_) => const LandingPhone());
      case DISCOVER_PLANS_ROUTE:
        return MaterialPageRoute(builder: (_) => const DiscoverPlansScreen());
      case HOME_ROUTE:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case ISLAND_ROUTE:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider.value(value: todosCubit, child: TodosScreen()));
      case EDIT_ISLAND_ROUTE:
        return MaterialPageRoute(builder: (_) => const EditIslandScreen());
      case ADD_ISLAND_ROUTE:
        return MaterialPageRoute(builder: (_) => const AddIslandScreen());
      case LANDING_ROUTE:
        return MaterialPageRoute(builder: (_) => const LandingPage());
      case LANDING_PHONE_ROUTE:
        return MaterialPageRoute(builder: (_) => const LandingPhone());
      default:
        return null;
    }
  }
}