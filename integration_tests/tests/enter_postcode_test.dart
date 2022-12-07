import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/components/primary_button.dart';
import 'package:flutter_test/flutter_test.dart';

import '../functionality/enter_postcode.dart';
import '../utils/common_utils.dart';

void main() async {
  group('Enter postcode', () {
    testWidgets('Enter empty postcode', (WidgetTester tester) async {
      await CommonUtils.initializeApp(tester);

      final enterPostcode = EnterPostcode(tester);
      await enterPostcode.enterPostcode();
      await tester.pumpAndSettle();
      await tester.dragUntilVisible(find.byType(PrimaryButton),
          find.byType(SingleChildScrollView), const Offset(-250, 0));
      await tester.tap(find.byType(PrimaryButton));
      await CommonUtils.pumpUntilFound(
          tester, find.text('Please check for valid postcode or address'));
    });
  });
}
