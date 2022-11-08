import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/style/spacing.dart';

import '../style/app_colors.dart';
import '../style/font.dart';

class MonthlyCard extends StatelessWidget {
  const MonthlyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          elevation: 4,
          color: AppColors.greyGradient,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            width: 280,
            height: 200,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Pay per call',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSize.size18,
                          color: AppColors.accent)),
                  AppSpacing.sizeBoxHt10,
                  Text('\u{00A3}XX.xx/monthly',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSize.size18,
                          color: AppColors.white)),
                  AppSpacing.sizeBoxHt30,
                  Text('Pay for the calls you make.\nMonthly rolling contract',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: AppFontSize.size16,
                          color: AppColors.white))
                ],
              ),
            ),
          )),
    );
    ;
  }
}
