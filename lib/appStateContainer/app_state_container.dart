import 'package:flutter/material.dart';

class AppStateContainer extends StatefulWidget {
  final Widget child;

  AppStateContainer({required this.child});

  static AppStateContainerState of(BuildContext context) {
    return (context
            .dependOnInheritedWidgetOfExactType<_InheritedAppStateContainer>())!
        .data;
  }

  @override
  AppStateContainerState createState() => AppStateContainerState();
}

class AppStateContainerState extends State<AppStateContainer> {
  bool areDetailsUpdated = false;
  ThemeMode _themeMode = ThemeMode.light;

  get themeMode => _themeMode;

  toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  void appUpdateValue(bool value) {
    setState(() {
      areDetailsUpdated = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedAppStateContainer(
      data: this,
      child: widget.child,
    );
  }
}

class _InheritedAppStateContainer extends InheritedWidget {
  final AppStateContainerState data;

  _InheritedAppStateContainer({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedAppStateContainer old) => true;
}
