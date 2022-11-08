import 'package:flutter/material.dart';

class TextFieldGroup extends StatelessWidget {
  final String textTitle;
  final String textFieldHint;

  const TextFieldGroup({
    super.key,
    required this.textTitle,
    required this.textFieldHint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            textTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 9.5),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: textFieldHint,
              fillColor: Colors.white),
        ),
      ],
    );
  }
}
