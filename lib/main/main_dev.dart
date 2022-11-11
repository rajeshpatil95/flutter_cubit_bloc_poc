import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import '../flavour/flavour_variables.dart';
import 'main_default.dart';

void main() async {
  FlavorConfig(
      name: 'Dev',
      color: Colors.red,
      location: BannerLocation.topEnd,
      variables: Dev.flavourVariables);

  defaultmain();
}
