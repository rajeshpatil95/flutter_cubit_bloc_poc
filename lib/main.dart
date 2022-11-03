import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/navigation/router.dart';

import 'appStateContainer/app_state_container.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(AppStateContainer(
        child: IslandApp(
      router: AppRouter(),
    )));
  }, (Object error, StackTrace stackTrace) async {});
}

class IslandApp extends StatelessWidget {
  final AppRouter? router;

  const IslandApp({Key? key, this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router!.generateRoute,
    );
  }
}
