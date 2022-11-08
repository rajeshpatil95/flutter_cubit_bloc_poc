import 'package:flutter/material.dart';

import '../resources/images/asset_path.dart';
import '../style/app_colors.dart';
import '../style/font.dart';
import '../style/spacing.dart';

class ExtraCard extends StatelessWidget {
  const ExtraCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          elevation: 4,
          color: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            width: 300,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                border: Border.all(color: AppColors.primary),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageAsset.product,
                    height: 200,
                    width: 200,
                  ),
                  AppSpacing.sizeBoxHt10,
                  const Text('\u{00A3}10/monthly',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: AppFontSize.size18,
                          color: AppColors.grey)),
                  AppSpacing.sizeBoxHt10,
                  const Text('24 months contract',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: AppFontSize.size14,
                          color: AppColors.grey)),
                  AppSpacing.sizeBoxHt20
                ],
              ),
            ),
          )),
    );
  }
}
