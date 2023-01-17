import 'package:flutter_test/flutter_test.dart';
import 'dart:async';
import 'package:flutter_cubit_bloc_poc/main/main_dev.dart' as app;

class CommonUtils {
  static Future<void> pumpUntilFound(WidgetTester tester, Finder finder,
      {Duration timeout = const Duration(seconds: 30)}) async {
    bool timerDone = false;
    final timer = Timer(timeout, () => fail('Pump has timed out'));
    while (!timerDone) {
      await tester.pumpAndSettle();
      timerDone |= tester.any(finder);
      await Future.delayed(const Duration(milliseconds: 100));
    }
    timer.cancel();
  }

  static Future<void> initializeApp(WidgetTester tester) async {
    app.main();
    await CommonUtils.pumpUntilFound(
        tester, find.text('BROADBAND THAT CAN HANDLE ANYTHING'));
  }
}
