// main.dart should not be used, use folder either main->main_dev.dart or main->main_prod.dart which invokes main_default.dart
//How to run app
//flutter run -d 86S7N18426004686 --flavor Dev -t lib/main/main_dev.dart -- To run dev version
//flutter build apk --release --flavor dev -t lib/main/main_dev.dart     -- To build dev release apk
//flutter build appbundle --flavor production -t lib/main/main_prod.dart -- To build prod release apk

//How to run widgets_tests
//flutter test ./tests/widget_tests/primary_button_test.dart
 
//How to run integration_tests
//flutter drive --driver=test_driver/integration_driver.dart --target=tests/integration_tests/app_test.dart -d emulator-5554 --flavor Dev
//flutter drive --driver=test_driver/integration_driver.dart --target=tests/integration_tests/app_test.dart -d emulator-5554 --flavor Dev --no-headless