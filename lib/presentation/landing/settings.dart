import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cubit_bloc_poc/appStateContainer/app_state_container.dart';
import 'package:flutter_cubit_bloc_poc/main/app.dart';
import 'package:flutter_cubit_bloc_poc/native/native_platforms.dart';
import 'package:flutter_cubit_bloc_poc/style/spacing.dart';

import '../../language/language.dart';
import '../../language/language_constants.dart';
import '../../style/app_colors.dart';
import '../../style/font.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _switchValue = false;
  static const methodChannel = MethodChannel('BB_Aquisition');
  late String methodChannelValue;

  @override
  void initState() {
    super.initState();
    methodChannelValue = 'Not initiated';
  }

  void initMethodChannel() async {
    try {
      String? returnedValue =
          await NativePlatform.getValue(NativeMethod.GetUserName);
      if (returnedValue != null) {
        setState(() {
          methodChannelValue = returnedValue;
        });
      }
    } catch (e) {
      print("Method Channel Exception: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: Text(translation(context).settings),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(methodChannelValue),
            AppSpacing.sizeBoxHt5,
            ElevatedButton(
              onPressed: initMethodChannel,
              child: const Text("Initiate Method channel"),
            ),
            AppSpacing.sizeBoxHt10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Multi theme',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: AppFontSize.size16,
                        color: AppColors.grey)),
                AppSpacing.sizeBoxWt5,
                CupertinoSwitch(
                  activeColor: AppColors.primary,
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                      AppStateContainer.of(context).toggleTheme(_switchValue);
                    });
                  },
                ),
              ],
            ),
            AppSpacing.sizeBoxHt10,
            Center(
              child: DropdownButton<Language>(
                iconSize: 30,
                hint: Text(translation(context).settings),
                onChanged: (Language? language) async {
                  if (language != null) {
                    Locale _locale = await setLocale(language.languageCode);
                    BBAquisitionApp.setLocale(context, _locale);
                  }
                },
                items: Language.languageList()
                    .map<DropdownMenuItem<Language>>(
                      (e) => DropdownMenuItem<Language>(
                        value: e,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              e.flag,
                              style: const TextStyle(fontSize: 30),
                            ),
                            Text(e.name)
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ));
  }
}
