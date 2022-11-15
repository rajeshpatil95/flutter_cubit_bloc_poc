import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/style/app_colors.dart';
import 'package:flutter_cubit_bloc_poc/style/font.dart';

class ColoredTitleText extends StatelessWidget {
  final String titleText;

  const ColoredTitleText({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: const TextStyle(
        color: AppColors.primary,
        fontSize: 22,
        fontFamily: AppFont.rubrikBold,
        fontWeight: AppFontWeight.fontWeightBold,
      ),
    );
  }
}

class FiberPlanCost extends StatelessWidget {
  final String title;
  final String cost;
  final double costSize;

  const FiberPlanCost({
    super.key,
    required this.title,
    required this.cost,
    required this.costSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.greyGradient,
              fontSize: 18,
              fontFamily: AppFont.rubrik,
            ),
          ),
        ),
        Text(
          cost,
          style: TextStyle(
            color: AppColors.greyGradient,
            fontSize: costSize,
            fontFamily: AppFont.rubrik,
          ),
        ),
      ],
    );
  }
}

class GreyCard extends StatelessWidget {
  const GreyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.greyGradient,
        boxShadow: const [
          BoxShadow(
            color: AppColors.grey,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontFamily: AppFont.rubrikBold,
                    fontWeight: AppFontWeight.fontWeightBold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    _totalUI(),
                    _totalUI(),
                  ],
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    '24 month contract',
                    style: TextStyle(
                      color: AppColors.greyWhite,
                      fontSize: 18,
                      fontFamily: AppFont.rubrik,
                      fontWeight: AppFontWeight.fontWeightBold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    '(Then £XX.XX from month 25)',
                    style: TextStyle(
                      color: AppColors.greyWhite,
                      fontSize: 18,
                      fontFamily: AppFont.rubrik,
                      fontWeight: AppFontWeight.fontWeightBold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

_totalUI() {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          '£XX.xx',
          style: TextStyle(
            color: AppColors.accent,
            fontSize: 26,
            fontFamily: AppFont.rubrikBold,
            fontWeight: AppFontWeight.fontWeightBold,
          ),
        ),
        Text(
          'upfront',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16,
            fontFamily: AppFont.rubrik,
          ),
        ),
      ],
    ),
  );
}

class IconWithText extends StatelessWidget {
  final String image;
  final String text;
  final double fontSize;
  final double imageHeight;
  final double imageWidth;
  final Color textColor;
  final String fontFamily;

  const IconWithText({
    super.key,
    required this.image,
    required this.imageHeight,
    required this.imageWidth,
    required this.text,
    required this.fontSize,
    required this.textColor,
    required this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          image,
          height: imageHeight,
          width: imageWidth,
        ),
        const SizedBox(width: 16),
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontFamily: fontFamily,
          ),
        ),
      ],
    );
  }
}
