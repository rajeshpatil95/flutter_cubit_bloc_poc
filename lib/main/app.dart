import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/appStateContainer/app_state_container.dart';

import '../multiTheme/theme_constants.dart';
import '../language/language_constants.dart';
import '../navigation/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BBAquisitionApp extends StatefulWidget {
  final AppRouter? router;

  const BBAquisitionApp({Key? key, this.router}) : super(key: key);

  @override
  State<BBAquisitionApp> createState() => _BBAquisitionAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _BBAquisitionAppState? state =
        context.findAncestorStateOfType<_BBAquisitionAppState>();
    state?.setLocale(newLocale);
  }
}

class _BBAquisitionAppState extends State<BBAquisitionApp> {
  Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() async {
    await getLocale().then((locale) => {setLocale(locale)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: AppStateContainer.of(context).themeMode,
      onGenerateRoute: widget.router!.generateRoute,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
    );
  }
}
