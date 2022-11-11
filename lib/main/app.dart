import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../navigation/router.dart';

class BBAquisitionApp extends StatelessWidget {
  final AppRouter? router;

  const BBAquisitionApp({Key? key, this.router}) : super(key: key);

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
