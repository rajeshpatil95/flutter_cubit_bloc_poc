import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../models/island.dart';
import '../../style/app_colors.dart';

class EditIslandScreen extends StatelessWidget {
  const EditIslandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Island")),
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
                  Navigator.of(context).pop();
                },
                text: "Back",
              ),
            ),
          )
        ],
      ),
    );
  }
}
