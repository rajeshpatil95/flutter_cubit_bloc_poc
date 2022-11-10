import 'package:flutter/material.dart';

import '../style/app_colors.dart';

class TitleTextField extends StatelessWidget {
  final String text;

  const TitleTextField({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.greyGradient,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rubrik Bold',
            ),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.grey),
              borderRadius: BorderRadius.circular(16.0),
            ),
            filled: true,
            fillColor: AppColors.greyWhite,
          ),
        ),
      ],
    );
  }
}
