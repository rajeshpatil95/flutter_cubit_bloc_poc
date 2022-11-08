import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cubit_bloc_poc/navigation/router.dart';

import 'appStateContainer/app_state_container.dart';
import 'di/di_initializer.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) async {
    if (kDebugMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    }
  };

  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    DI.initializeDependencies();
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
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router!.generateRoute,
    );
  }
}
