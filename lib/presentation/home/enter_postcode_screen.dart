import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/navigation/route_constants.dart';

import '../../components/custom_button.dart';

class EnterPostCodeScreen extends StatelessWidget {
  const EnterPostCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enter Post Code")),
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
                  Navigator.pushNamed(context, DISCOVER_PLANS_ROUTE);
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
