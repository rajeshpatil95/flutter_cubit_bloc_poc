import 'dart:math';
import 'package:flutter/material.dart';

import '../../style/app_colors.dart';
import '../../style/font.dart';
import '../../style/spacing.dart';

enum ActivationTabs { aboutYou, billing, review }

class ActivationHeader extends SliverPersistentHeaderDelegate {
  Key? key;
  Function? onPressed;
  ActivationHeader({this.key, this.onPressed});

  final double minTopBarHeight = 100;
  final double maxTopBarHeight = 180;

  Widget _activationHeadersWidget(num shrinkFactor) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 18),
          height:
              max(maxTopBarHeight * (1 - shrinkFactor * 1.45), minTopBarHeight),
          decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  onPressed!(ActivationTabs.aboutYou);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.account_box_outlined,
                      color: AppColors.white,
                    ),
                    AppSpacing.sizeBoxHt5,
                    Text('About you',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: AppFontSize.size14,
                            color: AppColors.white)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  onPressed!(ActivationTabs.billing);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.save,
                      color: AppColors.white,
                    ),
                    AppSpacing.sizeBoxHt5,
                    Text('Billing',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: AppFontSize.size14,
                            color: AppColors.white)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  onPressed!(ActivationTabs.review);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.chat_outlined,
                      color: AppColors.white,
                    ),
                    AppSpacing.sizeBoxHt5,
                    Text('Review',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: AppFontSize.size14,
                            color: AppColors.white)),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    num shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    return Container(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          if (shrinkFactor <= 0.5) _activationHeadersWidget(shrinkFactor),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 30, left: 14, right: 14, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.white,
                    ),
                  ),
                  AppSpacing.sizeBoxWt20,
                  const Text('Set up a Direct Debit',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: AppFontSize.size18,
                          color: AppColors.white)),
                  const Spacer(),
                  const Icon(
                    Icons.account_circle_rounded,
                    size: 26,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
          ),
          if (shrinkFactor > 0.5) _activationHeadersWidget(shrinkFactor),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 230;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
