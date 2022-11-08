import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/style/app_colors.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/landing_background.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black45,
            BlendMode.darken,
          ),
        ),
      ),
    );
  }
}
