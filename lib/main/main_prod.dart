import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/main/main_default.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import '../flavour/flavour_variables.dart';

void main() async {
  FlavorConfig(
      name: 'Prod',
      color: Colors.red,
      location: BannerLocation.topEnd,
      variables: Prod.flavourVariables);

  defaultmain();
}
