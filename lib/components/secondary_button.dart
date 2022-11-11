import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/style/app_colors.dart';
import 'package:flutter_cubit_bloc_poc/style/font.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 65,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary, // background
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: const BorderSide(color: AppColors.primary),
          ), // foreground
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            letterSpacing: 1,
            fontSize: 20,
            fontWeight: FontWeight.w900,
            fontFamily: AppFont.rubrikBold,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
