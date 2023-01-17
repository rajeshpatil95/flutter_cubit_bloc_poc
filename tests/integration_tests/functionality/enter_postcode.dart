import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class EnterPostcode {
  final WidgetTester tester;

  EnterPostcode(this.tester);

  Future<void> enterPostcode({String postcode = ''}) async {
    final postcodeInput = find.byType(TextField).first;
    await tester.tap(postcodeInput);
    await tester.enterText(postcodeInput, postcode);
    await tester.testTextInput.receiveAction(TextInputAction.done);
  }

  Future<void> clickDiscover() async {
    final loginButton =
        find.widgetWithText(ElevatedButton, 'Discover what you can get');
    expect(loginButton, findsOneWidget);
    await tester.tap(loginButton);
  }
}
