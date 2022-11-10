import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/style/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.accent, // background
          onPrimary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: const BorderSide(color: AppColors.accent),
          ), // foreground
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            fontFamily: 'Rubrik',
          ),
        ),
      ),
    );
  }
}
