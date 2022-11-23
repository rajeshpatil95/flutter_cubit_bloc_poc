import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_bloc_poc/presentation/deposit/pay_deposit_screen.dart';
import 'package:flutter_cubit_bloc_poc/presentation/home/call_plan_screen.dart';
import 'package:flutter_cubit_bloc_poc/presentation/landing/settings.dart';

import '../cubit/address/address_cubit.dart';
import '../cubit/island/island_cubit.dart';
import '../di/di_initializer.dart';
import '../presentation/activation/activation_process_screen.dart';
import '../presentation/activation/activation_screen.dart';
import '../presentation/deposit/deposit_success_screen.dart';
import '../presentation/home/discover_plans_screen.dart';
import '../presentation/home/home_screen.dart';
import '../presentation/home/product_detail_screen.dart';
import '../presentation/home/schedule_slot_screen.dart';
import '../presentation/landing/landing_page.dart';
import '../services/address/repository.dart';
import 'route_constants.dart';
import '../services/island/repository.dart';
import '../presentation/island/add_island_screen.dart';
import '../presentation/island/edit_island_screen.dart';
import '../presentation/island/island_screen.dart';

class AppRouter {
  late IslandRepository islandRepository;
  late IslandCubit islandCubit;
  late AddressRepository addressRepository;
  late AddressCubit addressCubit;

  AppRouter() {
    islandRepository = DI.inject<IslandRepository>();
    islandCubit = IslandCubit(repository: islandRepository);

    addressRepository = DI.inject<AddressRepository>();
    addressCubit = AddressCubit(repository: addressRepository);
  }

  MaterialPageRoute? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: addressCubit, child: const LandingPage()));
      case DISCOVER_PLANS_ROUTE:
        return MaterialPageRoute(builder: (_) => const DiscoverPlansScreen());
      case HOME_ROUTE:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case ISLAND_ROUTE:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider.value(value: islandCubit, child: IslandScreen()));
      case EDIT_ISLAND_ROUTE:
        return MaterialPageRoute(builder: (_) => const EditIslandScreen());
      case ADD_ISLAND_ROUTE:
        return MaterialPageRoute(builder: (_) => const AddIslandScreen());
      case LANDING_ROUTE:
        return MaterialPageRoute(builder: (_) => const LandingPage());
      case ACTIVATION_ROUTE:
        return MaterialPageRoute(builder: (_) => const ActivationScreen());
      case ACTIVATION_PROCESS_ROUTE:
        return MaterialPageRoute(
            builder: (_) => const ActivationProcessScreen());
      case CALL_PLAN_ROUTE:
        return MaterialPageRoute(builder: (_) => const CallPlanScreen());
      case PRODUCT_DETAIL_ROUTE:
        return MaterialPageRoute(builder: (_) => const ProductDetailScreen());
      case SCHEDULE_SLOT_ROUTE:
        return MaterialPageRoute(builder: (_) => const ScheduleSlotScreen());
      case PAY_DEPOSIT_ROUTE:
        return MaterialPageRoute(builder: (_) => const PayDepositScreen());
      case DEPOSIT_SUCCESS_ROUTE:
        return MaterialPageRoute(
            builder: (_) => const DepositSuccessfulScreen());
      case SETTINGS_ROUTE:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      default:
        return null;
    }
  }
}
