import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/navigation/route_constants.dart';

import '../../components/custom_button.dart';

class DiscoverPlansScreen extends StatelessWidget {
  const DiscoverPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Discover Plans")),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                buttonColor: Colors.blue,
                borderRadius: 4.0,
                onPressed: () {
                  Navigator.pushNamed(context, HOME_ROUTE);
                },
                text: "Continue",
              ),
            ),
          )
        ],
      ),
    );
  }
}
