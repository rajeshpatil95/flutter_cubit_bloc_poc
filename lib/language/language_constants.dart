import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../di/di_initializer.dart';
import '../storage/shared_preferences.dart';

//languages code
const String ENGLISH = 'en';
const String FARSI = 'fa';
const String ARABIC = 'ar';
const String HINDI = 'hi';

Future<Locale> setLocale(String languageCode) async {
  await DI
      .inject<Preferences>()
      .setStringForKey(preferencesKeys.kLanguageCode, languageCode);

  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  String languageCode = await DI
      .inject<Preferences>()
      .getStringForKey(preferencesKeys.kLanguageCode);

  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH, '');
    case FARSI:
      return const Locale(FARSI, "");
    case ARABIC:
      return const Locale(ARABIC, "");
    case HINDI:
      return const Locale(HINDI, "");
    default:
      return const Locale(ENGLISH, '');
  }
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context)!;
}
