import 'package:flutter/material.dart';

import '../models/island.dart';

class EditTodoScreen extends StatelessWidget {
  EditTodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Todo"),
        actions: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.delete),
            ),
          )
        ],
      ),
      body: const Center(child: Text("Edit Todo")),
    );
  }
}
