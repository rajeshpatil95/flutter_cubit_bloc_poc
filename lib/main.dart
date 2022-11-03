import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/navigation/router.dart';

void main() {
  runApp(IslandApp(
    router: AppRouter(),
  ));
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
