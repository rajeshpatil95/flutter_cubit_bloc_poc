import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cubit_bloc_poc/navigation/router.dart';

import '../appStateContainer/app_state_container.dart';
import '../di/di_initializer.dart';
import 'app.dart';

void defaultmain() {
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
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    runApp(AppStateContainer(
        child: BBAquisitionApp(
      router: AppRouter(),
    )));
  }, (Object error, StackTrace stackTrace) async {});
}
