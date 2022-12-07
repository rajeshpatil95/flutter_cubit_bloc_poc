import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'tests/enter_postcode_test.dart' as enter_postcode_test;

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  //Flutter testing gives us an ability to set stuff up before and after cleanup
  group('Complete BB_Aquisition Tests', () {
    setUpAll(() {
      //This is called once before ALL test
    });

    setUp(() {
      //This is called once before EVERY test
    });

    tearDownAll(() {
      //This is called once after ALL test
    });

    tearDown(() {
      //This is called once after EVERY test
    });

    enter_postcode_test.main();
  });
}
